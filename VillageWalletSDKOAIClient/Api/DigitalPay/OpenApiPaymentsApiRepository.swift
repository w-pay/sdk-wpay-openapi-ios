import UIKit
import VillageWalletSDK

public class OpenApiPaymentApiRepository: OpenApiClientFactory, PaymentApiRepository {
	public func pay(
		paymentRequest: DigitalPayPaymentRequest,
		completion: @escaping ApiCompletion<DigitalPayPaymentResponse>
	) {
		let api = createPaymentsApi()

		let body = OAIPaymentsRequest.fromDigitalPayPaymentRequest(request: paymentRequest)

		api.paymentsPost(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			body: body,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			xEverydayPayWallet: getDefaultHeader(client: api.apiClient, name: X_EVERYDAY_PAY_WALLET),
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiDigitalPayPaymentResponse(
					response: results!
				)))
			}
		)
	}

	public func guestPayment(
		paymentRequest: DigitalPayPaymentRequest,
		completion: @escaping ApiCompletion<DigitalPayPaymentResponse>
	) {
		let api = createPaymentsApi()

		let body = OAIPaymentsRequest.fromDigitalPayPaymentRequest(request: paymentRequest)

		api.guestPaymentsPost(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			body: body,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiDigitalPayPaymentResponse(
					response: results!
				)))
			}
		)
	}

	public func complete(
		completionRequest: DigitalPayCompletionRequest,
		completion: @escaping ApiCompletion<DigitalPayCompletionResponse>
	) {
		let api = createPaymentsApi()

		let body = OAICompletionsRequest()
		body.clientReference = completionRequest.clientReference
		body.orderNumber = completionRequest.orderNumber
		body.completions = completionRequest.completions.map { it in
			let completion = OAIInstoreMerchantTransactionsTransactionIdCompletionDataCompletions()

			completion.paymentTransactionRef = it.paymentTransactionRef
			completion.amount = it.amount as NSNumber

			return completion
		}

		api.completionsPost(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			xJWSSignature: "",
			body: body,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiDigitalPayCompletionResponse(
					response: results!
				)))
			}
		)
	}

	public func voidPayment(
		voidRequest: DigitalPayVoidRequest,
		completion: @escaping ApiCompletion<DigitalPayVoidResponse>
	) {
		let api = createPaymentsApi()

		let body = OAIVoidsRequest()
		body.clientReference = voidRequest.clientReference
		body.orderNumber = voidRequest.orderNumber
		body.voids = voidRequest.voids.map { it in
			let void = OAIInstoreMerchantTransactionsTransactionIdVoidDataVoids()

			void.paymentTransactionRef = it.paymentTransactionRef

			return void
		}

		api.voidsPost(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			xJWSSignature: "",
			body: body,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiDigitalPayVoidResponse(
					response: results!
				)))
			}
		)
	}

	public func refund(
		refundRequest: DigitalPayRefundRequest,
		completion: @escaping ApiCompletion<DigitalPayRefundResponse>
	) {
		let api = createPaymentsApi()

		let body = OAIRefundsRequest()
		body.clientReference = refundRequest.clientReference
		body.orderNumber = refundRequest.orderNumber
		body.refunds = refundRequest.refunds.map { it in
			let refund = OAIRefundsRequestRefunds()

			refund.paymentTransactionRef = it.paymentTransactionRef
			refund.amount = it.amount as NSNumber

			return refund
		}

		api.refundsPost(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			xJWSSignature: "",
			body: body,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiDigitalPayRefundResponse(
					response: results!
				)))
			}
		)
	}
}

extension OAIPaymentsRequest {
	static func fromDigitalPayPaymentRequest(
		request: DigitalPayPaymentRequest?
	) -> OAIPaymentsRequest? {
		guard let paymentRequest = request else {
			return nil
		}

		let body = OAIPaymentsRequest()
		body.transactionType = OAIPaymentTransactionType.fromPaymentTransactionType(
			paymentRequest.transactionType
		)
		body.clientReference = paymentRequest.clientReference
		body.orderNumber = paymentRequest.orderNumber
		body.shippingAddress = OAIPaymentsRequestShippingAddress.fromDigitalPayAddress(
			paymentRequest.shippingAddress
		)

		body.payments = paymentRequest.payments.map({ it in
			let payment = OAIPaymentsRequestPayments()
			payment.paymentInstrumentId = it.paymentInstrumentId
			payment.paymentToken = it.paymentToken
			payment.amount = it.amount as NSNumber
			payment.stepUpToken = it.stepUpToken
			payment.passcode = it.passcode

			return payment
		})

		if let extendedMetadata = paymentRequest.extendedMerchantData {
			body.extendedMerchantData = extendedMetadata.map({ it in
				let data = OAIPaymentsRequestExtendedMerchantData()
				data.field = it.field.rawValue
				data.value = it.value

				return data
			})
		}

		body.fraudPayload = OAIPaymentsRequestFraudPayload.fromDigitalPayFraudPayload(
			paymentRequest.fraudPayload
		)

		body.storeData = OAIPaymentsRequestStoreData.fromDigitalPayStoreData(
			paymentRequest.storeData
		)

		return body
	}
}

extension OAIPaymentTransactionType {
	static func fromPaymentTransactionType(
		_ transactionType: PaymentTransactionType?
	) -> OAIPaymentTransactionType? {
		guard let theType = transactionType else { return nil }

		let type = OAIPaymentTransactionType()

		if let applePay = theType.applePay {
			type.applePay = OAIPaymentTransactionTypeApplePay()
			type.applePay.creditCard = applePay.creditCard.rawValue
			type.applePay.debitCard = applePay.debitCard.rawValue
		}

		if let googlePay = theType.googlePay {
			type.googlePay = OAIPaymentTransactionTypeGooglePay()
			type.googlePay.creditCard = googlePay.creditCard.rawValue
			type.googlePay.debitCard = googlePay.debitCard.rawValue
		}

		if let creditCard = theType.creditCard {
			type.creditCard = creditCard.rawValue
		}

		if let giftCard = theType.giftCard {
			type.giftCard = giftCard.rawValue
		}

		if let payPal = theType.payPal {
			type.payPal = payPal.rawValue
		}

		return type
	}
}

extension OAIPaymentsRequestShippingAddress {
	static func fromDigitalPayAddress(
		_ storeData: DigitalPayAddress?
	) -> OAIPaymentsRequestShippingAddress? {
		guard let theStore = storeData else {
			return nil
		}

		let shippingAddress = OAIPaymentsRequestShippingAddress()

		shippingAddress.firstName = theStore.firstName
		shippingAddress.lastName = theStore.lastName
		shippingAddress.email = theStore.email
		shippingAddress.company = theStore.company
		shippingAddress.extendedAddress = theStore.extendedAddress
		shippingAddress.streetAddress = theStore.streetAddress
		shippingAddress.suburb = theStore.suburb
		shippingAddress.stateOrTerritory = theStore.stateOrTerritory
		shippingAddress.postalCode = theStore.postalCode
		shippingAddress.countryCode = theStore.countryCode

		return shippingAddress
	}
}

extension OAIPaymentsRequestFraudPayload {
	static func fromDigitalPayFraudPayload(
		_ payload: DigitalPayFraudPayload?
	) -> OAIPaymentsRequestFraudPayload? {
		guard let thePayload = payload else {
			return nil
		}

		let fraudPayload = OAIPaymentsRequestFraudPayload()
		fraudPayload.provider = thePayload.provider
		fraudPayload.version = thePayload.version
		fraudPayload.format = thePayload.format.rawValue
		fraudPayload.responseFormat = thePayload.responseFormat.rawValue
		fraudPayload.message = thePayload.message

		return fraudPayload
	}
}

extension OAIPaymentsRequestStoreData {
	static func fromDigitalPayStoreData(
		_ storeData: DigitalPayStoreData?
	) -> OAIPaymentsRequestStoreData? {
		guard let theData = storeData else {
			return nil
		}

		let data = OAIPaymentsRequestStoreData()
		data.storeId = theData.storeId
		data.rrn = theData.rrn
		data.transactionTimestamp = theData.transactionTimestamp as NSNumber

		return data
	}
}
