import UIKit
import VillageWalletSDK

public class OpenApiPaymentAgreementApiRepository: OpenApiClientFactory, PaymentAgreementApiRepository {
	public func create(
		paymentAgreementRequest: DigitalPayCreatePaymentAgreementRequest,
		completion: @escaping ApiCompletion<DigitalPayPaymentAgreementResponse>
	) {
		let api = createPaymentAgreementsApi()

		let body = OAICreatePaymentAgreementRequest()
		body.clientReference = paymentAgreementRequest.clientReference
		body.customerRef = paymentAgreementRequest.customerRef
		body.orderNumber = paymentAgreementRequest.orderNumber
		body.billingAddress = OAICreatePaymentAgreementRequestBillingAddress.fromDigitalPayAddress(
			paymentAgreementRequest.billingAddress
		)

		body.paymentAgreement = OAICreatePaymentAgreementRequestPaymentAgreement.fromDigitalPayPaymentAgreement(
			paymentAgreementRequest.paymentAgreement
		)

		body.fraudPayload = OAIVerifyPaymentInstrumentsRequestFraudPayload.fromDigitalPayFraudPayload(
			paymentAgreementRequest.fraudPayload
		)

		api.paymentagreementsPost(
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

				completion(.success(OpenApiDigitalPayPaymentAgreementResponse(
					agreement: results!
				)))
			}
		)
	}

	public func update(
		paymentToken: String,
		paymentAgreementRequest: DigitalPayUpdatePaymentAgreementRequest,
		completion: @escaping ApiCompletion<DigitalPayPaymentAgreementResponse>
	) {
		let api = createPaymentAgreementsApi()

		let body = OAIUpdatePaymentAgreementRequest()
		body.clientReference = paymentAgreementRequest.clientReference
		body.customerRef = paymentAgreementRequest.customerRef
		body.billingAddress = OAICreatePaymentAgreementRequestBillingAddress.fromDigitalPayAddress(
			paymentAgreementRequest.billingAddress
		)

		body.paymentAgreement = OAIUpdatePaymentAgreementRequestPaymentAgreement.fromDigitalPayPaymentAgreementUpdate(
			paymentAgreementRequest.paymentAgreement
		)

		body.fraudPayload = OAIUpdatePaymentAgreementRequestFraudPayload.fromDigitalPayFraudPayload(
			paymentAgreementRequest.fraudPayload
		)

		api.paymentagreementsPaymentTokenPost(
			withPaymentToken: paymentToken,
			xApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
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

				completion(.success(OpenApiDigitalPayPaymentAgreementResponse(
					agreement: results!
				)))
			}
		)
	}

	public func charge(
		chargeRequest: DigitalPayChargePaymentAgreementRequest,
		completion: @escaping ApiCompletion<DigitalPayPaymentAgreementResponse>
	) {
		let api = createPaymentAgreementsApi()

		let body = OAIChargePaymentAgreementRequest()
		body.transactionType = OAIChargePaymentAgreementRequestTransactionType()

		if let type = chargeRequest.transactionType.applePay {
			body.transactionType.applePay = OAIChargePaymentAgreementRequestTransactionTypeApplePay()
			body.transactionType.applePay.creditCard = type.creditCard.rawValue
			body.transactionType.applePay.debitCard = type.debitCard.rawValue
		}

		if let type = chargeRequest.transactionType.googlePay {
			body.transactionType.googlePay = OAIChargePaymentAgreementRequestTransactionTypeGooglePay()
			body.transactionType.googlePay.creditCard = type.creditCard.rawValue
			body.transactionType.googlePay.debitCard = type.debitCard.rawValue
		}

		if let type = chargeRequest.transactionType.creditCard {
			body.transactionType.creditCard = type.rawValue
		}

		if let type = chargeRequest.transactionType.giftCard {
			body.transactionType.giftCard = type.rawValue
		}

		if let type = chargeRequest.transactionType.payPal {
			body.transactionType.payPal = type.rawValue
		}

		body.amount = chargeRequest.amount as NSNumber
		body.clientReference = chargeRequest.clientReference
		body.customerRef = chargeRequest.customerRef
		body.orderNumber = chargeRequest.orderNumber
		body.paymentToken = chargeRequest.paymentToken
		body.fraudPayload = OAIVerifyPaymentInstrumentsRequestFraudPayload.fromDigitalPayFraudPayload(chargeRequest.fraudPayload)

		api.paymentagreementsChargePost(
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

				completion(.success(OpenApiDigitalPayPaymentAgreementResponse(
					agreement: results!
				)))
			}
		)
	}

	public func delete(paymentToken: String, completion: @escaping ApiCompletion<Void>) {
		let api = createPaymentAgreementsApi()

		api.paymentagreementsPaymentTokenDelete(
			withPaymentToken: paymentToken,
			xApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(Void()))
			}
		)
	}
}

extension OAICreatePaymentAgreementRequestBillingAddress {
	static func fromDigitalPayAddress(_ address: DigitalPayAddress?) -> OAICreatePaymentAgreementRequestBillingAddress? {
		guard let theAddress = address else {
			return nil
		}

		let billingAddress = OAICreatePaymentAgreementRequestBillingAddress()

		billingAddress.firstName = theAddress.firstName
		billingAddress.lastName = theAddress.lastName
		billingAddress.email = theAddress.email
		billingAddress.company = theAddress.company
		billingAddress.extendedAddress = theAddress.extendedAddress
		billingAddress.streetAddress = theAddress.streetAddress
		billingAddress.suburb = theAddress.suburb
		billingAddress.stateOrTerritory = theAddress.stateOrTerritory
		billingAddress.postalCode = theAddress.postalCode
		billingAddress.countryCode = theAddress.countryCode

		return billingAddress
	}
}

extension OAICreatePaymentAgreementRequestPaymentAgreement {
	static func fromDigitalPayPaymentAgreement(
		_ agreement: DigitalPayRequestPaymentAgreement?
	) -> OAICreatePaymentAgreementRequestPaymentAgreement? {
		guard let theAgreement = agreement else {
			return nil
		}

		let paymentAgreement = OAICreatePaymentAgreementRequestPaymentAgreement()

		paymentAgreement.type = theAgreement.type.rawValue
		paymentAgreement.paymentInstrumentId = theAgreement.paymentInstrumentId
		paymentAgreement.chargeFrequency = theAgreement.chargeFrequency.rawValue
		paymentAgreement.chargeAmount = theAgreement.chargeAmount as NSNumber
		paymentAgreement.startDate = theAgreement.startDate
		paymentAgreement.endDate = theAgreement.endDate
		paymentAgreement.immediateCharge = theAgreement.immediateCharge as NSNumber
		paymentAgreement.stepUpToken = theAgreement.stepUpToken

		return paymentAgreement
	}
}

extension OAIUpdatePaymentAgreementRequestPaymentAgreement {
	static func fromDigitalPayPaymentAgreementUpdate(
		_ agreement: DigitalPayPaymentAgreementUpdate?
	) -> OAIUpdatePaymentAgreementRequestPaymentAgreement? {
		guard let theAgreement = agreement else {
			return nil
		}

		let paymentAgreement = OAIUpdatePaymentAgreementRequestPaymentAgreement()

		paymentAgreement.paymentInstrumentId = theAgreement.paymentInstrumentId
		paymentAgreement.chargeFrequency = theAgreement.chargeFrequency.rawValue
		paymentAgreement.chargeAmount = theAgreement.chargeAmount as NSNumber
		paymentAgreement.startDate = theAgreement.startDate
		paymentAgreement.endDate = theAgreement.endDate
		paymentAgreement.stepUpToken = theAgreement.stepUpToken

		return paymentAgreement
	}
}

extension OAIVerifyPaymentInstrumentsRequestFraudPayload {
	static func fromDigitalPayFraudPayload(
		_ payload: DigitalPayFraudPayload?
	) -> OAIVerifyPaymentInstrumentsRequestFraudPayload? {
		guard let thePayload = payload else {
			return nil
		}

		let fraudPayload = OAIVerifyPaymentInstrumentsRequestFraudPayload()
		fraudPayload.provider = thePayload.provider
		fraudPayload.version = thePayload.version
		fraudPayload.format = thePayload.format.rawValue
		fraudPayload.responseFormat = thePayload.responseFormat.rawValue
		fraudPayload.message = thePayload.message

		return fraudPayload
	}
}

extension OAIUpdatePaymentAgreementRequestFraudPayload {
	static func fromDigitalPayFraudPayload(
		_ payload: DigitalPayFraudPayload?
	) -> OAIUpdatePaymentAgreementRequestFraudPayload? {
		guard let thePayload = payload else {
			return nil
		}

		let fraudPayload = OAIUpdatePaymentAgreementRequestFraudPayload()
		fraudPayload.provider = thePayload.provider
		fraudPayload.version = thePayload.version
		fraudPayload.format = thePayload.format.rawValue
		fraudPayload.responseFormat = thePayload.responseFormat.rawValue
		fraudPayload.message = thePayload.message

		return fraudPayload
	}
}
