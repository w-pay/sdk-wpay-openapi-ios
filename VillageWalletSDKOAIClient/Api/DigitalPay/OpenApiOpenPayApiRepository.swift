import UIKit
import VillageWalletSDK

public class OpenApiOpenPayApiRepository: OpenApiClientFactory, OpenPayApiRepository {
	public func pay(
		paymentRequest: OpenPayPaymentRequest,
		completion: @escaping ApiCompletion<OpenPayPaymentTransactionResponse>
	) {
		let api = createOpenpayApi()

		let body = OAIOpenpayPaymentsRequest()
		body.clientReference = paymentRequest.clientReference
		body.channel = paymentRequest.channel
		body.customerRef = paymentRequest.customerRef
		body.merchantTransactedAt = paymentRequest.merchantTransactedAt
		body.orderNumber = paymentRequest.orderNumber

		api.openpayPaymentsPost(
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

				completion(.success(OpenApiOpenPayPaymentTransactionResponse(
					response: results!
				)))
			}
		)
	}

	public func complete(
		completionRequest: OpenPayCompletionRequest,
		completion: @escaping ApiCompletion<OpenPayCompletionResponse>
	) {
		let api = createOpenpayApi()

		let body = OAIOpenpayCompletionsRequest()
		body.clientReference = completionRequest.clientReference
		body.orderNumber = completionRequest.orderNumber
		body.merchantTransactedAt = completionRequest.merchantTransactedAt
		body.completions = completionRequest.completions.map { it in
			let completion = OAIOpenpayCompletionsRequestCompletions()
			completion.paymentTransactionRef = it.paymentTransactionRef
			completion.amount = it.amount as NSNumber
			completion.gstAmount = it.gstAmount as NSNumber?

			return completion
		}

		api.openpayCompletionsPost(
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

				completion(.success(OpenApiOpenPayCompletionResponse(
					response: results!
				)))
			}
		)
	}

	public func voidPayment(
		voidRequest: OpenPayVoidRequest,
		completion: @escaping ApiCompletion<OpenPayVoidResponse>
	) {
		let api = createOpenpayApi()

		let body = OAIOpenpayVoidsRequest()
		body.clientReference = voidRequest.clientReference
		body.orderNumber = voidRequest.orderNumber
		body.voids = voidRequest.voids.map { it in
			let void = OAIOpenpayVoidsRequestVoids()
			void.paymentTransactionRef = it.paymentTransactionRef

			return void
		}

		api.openpayVoidsPost(
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

				completion(.success(OpenApiOpenPayVoidResponse(
					response: results!
				)))
			}
		)
	}

	public func refund(
		refundRequest: OpenPayRefundRequest,
		completion: @escaping ApiCompletion<OpenPayRefundResponse>
	) {
		let api = createOpenpayApi()

		let body = OAIOpenpayRefundsRequest()
		body.clientReference = refundRequest.clientReference
		body.orderNumber = refundRequest.orderNumber
		body.merchantTransactedAt = refundRequest.merchantTransactedAt

		if let storeData = refundRequest.storeData {
			body.storeData = OAIOpenpayRefundsRequestStoreData()
			body.storeData.storeId = storeData.storeId
		}

		body.refunds = refundRequest.refunds.map { it in
			let refund = OAIOpenpayRefundsRequestRefunds()
			refund.paymentTransactionRef = it.paymentTransactionRef
			refund.amount = it.amount as NSNumber
			refund.gstAmount = it.gstAmount as NSNumber?
			refund.reason = it.reason

			return refund
		}

		api.openpayRefundsPost(
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

				completion(.success(OpenApiOpenPayRefundResponse(
					response: results!
				)))
			}
		)
	}
}
