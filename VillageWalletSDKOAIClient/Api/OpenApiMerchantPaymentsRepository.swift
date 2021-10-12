import UIKit
import VillageWalletSDK

public class OpenApiMerchantPaymentsRepository: OpenApiClientFactory, MerchantPaymentsRepository {
	public func listPayments(
		type: String?,
		page: Int?,
		pageSize: Int?,
		completion: @escaping ApiCompletion<MerchantPaymentSummaries>
	) {
		let api = createMerchantApi()

		api.getMerchantPayments(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			type: type,
			pageSize: pageSize as NSNumber?,
			page: page as NSNumber?,
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiMerchantPaymentSummaries(
					payments: result!.data.payments as! [OAIMerchantPaymentSummary]
				)))
			})
	}

	public func createPaymentRequest(
		paymentRequest: NewPaymentRequest,
		completion: @escaping ApiCompletion<CreatePaymentRequestResult>
	) {
		let api = createMerchantApi()

		let body = OAIMerchantPaymentRequest()
		body.data = OAIInstoreMerchantPaymentsData()
		body.data.merchantReferenceId = paymentRequest.merchantReferenceId
		body.data.grossAmount = NSDecimalNumber(decimal: paymentRequest.grossAmount)
		body.data.generateQR = paymentRequest.generateQR as NSNumber
		body.data.maxUses = paymentRequest.maxUses as NSNumber?
		body.data.timeToLivePayment = paymentRequest.timeToLivePayment as NSNumber?
		body.data.timeToLiveQR = paymentRequest.timeToLiveQR as NSNumber?
		body.data.specificWalletId = paymentRequest.specificWalletId
		body.data.posPayload = OAIPosPayload.fromPosPayload(paymentRequest.posPayload)
		body.data.merchantPayload = OAIMerchantPayload.fromMerchantPayload(paymentRequest.merchantPayload)

		if let basket = paymentRequest.basket {
			body.data.basket = OAIBasket()
			body.data.basket.items = basket.items.map { it in
				let item = OAIBasketItems()
				item.label = it.label
				item._description = it.description

				if let quantity = it.quantity {
					item.quantity = NSNumber(value: quantity)
				}

				if let unitPrice = it.unitPrice {
					item.unitPrice = NSDecimalNumber(decimal: unitPrice)
				}

				item.unitMeasure = it.unitMeasure

				if let totalPrice = it.totalPrice {
					item.totalPrice = NSDecimalNumber(decimal: totalPrice)
				}

				item.tags = it.tags

				return item
			}
		}

		api.createPaymentRequest(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			merchantPaymentRequest: body,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiCreatePaymentRequestResult(result: result!.data)))
			})
	}

	public func getPaymentRequestDetailsBy(
		paymentRequestId: String,
		completion: @escaping ApiCompletion<MerchantPaymentDetails>
	) {
		let api = createMerchantApi()

		api.getMerchantPaymentDetails(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			paymentRequestId: paymentRequestId,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiMerchantPaymentDetails(details: result!.data)))
			})
	}

	public func deletePaymentRequest(
		paymentRequestId: String,
		completion: @escaping ApiCompletion<Void>
	) {
		let api = createMerchantApi()

		api.deleteMerchantPaymentRequest(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			paymentRequestId: paymentRequestId,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			completionHandler: { error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(Void()))
			})
	}

	public func refundTransaction(
		transactionId: String,
		refundDetails: TransactionRefundDetails,
		completion: @escaping ApiCompletion<MerchantTransactionSummary>
	) {
		let api = createMerchantApi()

		let body = OAIRefundMerchantTransactionRequest()
		body.data = OAIInstoreMerchantTransactionsTransactionIdRefundData()
		body.data.reason = refundDetails.reason

		api.refundMerchantTransaction(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			transactionId: transactionId,
			refundMerchantTransactionRequest: body,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiMerchantTransactionSummary(summary: result!.data)))
			})
	}

	public func completeTransaction(
		transactionId: String,
		completionDetails: TransactionCompletionDetails,
		completion: @escaping ApiCompletion<MerchantTransactionSummary>
	) {
		let api = createMerchantApi()

		let body = OAIInlineObject()
		body.data = OAIInstoreMerchantTransactionsTransactionIdCompletionData()
		body.data.clientReference = completionDetails.clientReference
		body.data.orderNumber = completionDetails.orderNumber
		body.data.completions = completionDetails.completions?.map { item in
			let dto = OAIInstoreMerchantTransactionsTransactionIdCompletionDataCompletions()
			dto.paymentTransactionRef = item.paymentTransactionRef
			dto.amount = item.amount as NSNumber

			return dto
		}

		api.instoreMerchantTransactionsTransactionIdCompletionPost(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			transactionId: transactionId,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			inlineObject: body,
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiMerchantTransactionSummary(summary: result!.data)))
			})
	}

	public func voidTransaction(
		transactionId: String,
		voidDetails: TransactionVoidDetails,
		completion: @escaping ApiCompletion<MerchantTransactionSummary>
	) {
		let api = createMerchantApi()

		let body = OAIInlineObject1()
		body.data = OAIInstoreMerchantTransactionsTransactionIdVoidData()
		body.data.clientReference = voidDetails.clientReference
		body.data.orderNumber = voidDetails.orderNumber
		body.data.voids = voidDetails.voids?.map { item in
			let dto = OAIInstoreMerchantTransactionsTransactionIdVoidDataVoids()
			dto.paymentTransactionRef = item.paymentTransactionRef

			return dto
		}

		api.instoreMerchantTransactionsTransactionIdVoidPost(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			transactionId: transactionId,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			inlineObject1: body,
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiMerchantTransactionSummary(summary: result!.data)))
			})
	}
}

extension OAIPosPayload {
	static func fromPosPayload(
		_ posPayload: PosPayload?
	) -> OAIPosPayload? {
		guard let thePayload = posPayload else { return nil }

		let payload = OAIPosPayload()
		payload.schemaId = thePayload.schemaId
		payload.payload = thePayload.payload as? [String: NSObject]

		return payload
	}
}

extension OAIMerchantPayload {
	static func fromMerchantPayload(
		_ merchantPayload: MerchantPayload?
	) -> OAIMerchantPayload? {
		guard let thePayload = merchantPayload else { return nil }

		let payload = OAIMerchantPayload()
		payload.schemaId = thePayload.schemaId
		payload.payload = thePayload.payload as? [String: NSObject]

		return payload
	}
}