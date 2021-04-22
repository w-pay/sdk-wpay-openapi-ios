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

		if let posPayload = paymentRequest.posPayload {
			body.data.posPayload = OAIPosPayload()
			body.data.posPayload.schemaId = posPayload.schemaId
			body.data.posPayload.payload = posPayload.payload as? [String: NSObject]
		}

		if let merchantPayload = paymentRequest.merchantPayload {
			body.data.merchantPayload = OAIMerchantPayload()
			body.data.merchantPayload.schemaId = merchantPayload.schemaId
			body.data.merchantPayload.payload = merchantPayload.payload as? [String: NSObject]
		}

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
}