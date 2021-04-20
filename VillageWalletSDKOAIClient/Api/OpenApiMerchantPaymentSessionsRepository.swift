import UIKit
import VillageWalletSDK

public class OpenApiMerchantPaymentSessionsRepository
	: OpenApiClientFactory, MerchantPaymentSessionsRepository
{
	public func create(
		request: CreatePaymentSessionRequest,
		completion: @escaping ApiCompletion<CreatePaymentSessionResult>
	) {
		let api = createMerchantApi()

		let body = OAICreatePaymentSessionRequest()
		body.data = OAIMerchantPaymentSessionData()
		body.data.location = request.location
		body.data.merchantInfo = toDynamicPayload(payload: request.merchantInfo)
		body.data.generateQR = request.generateQR as NSNumber
		body.data.timeToLivePaymentSession = request.timeToLivePaymentSession as NSNumber?
		body.data.timeToLiveQR = request.timeToLiveQR as NSNumber?

		api.createPaymentSession(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_MERCHANT_ID),
			createPaymentSessionRequest: body,
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiCreatePaymentSessionResult(result: result!.data)))
			})
	}

	public func getBy(
		paymentSessionId: String,
		completion: @escaping ApiCompletion<PaymentSession>
	) {
		let api = createMerchantApi()

		api.getPaymentSession(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_MERCHANT_ID),
			paymentSessionId: paymentSessionId,
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiPaymentSession(session: result!.data)))
			})
	}

	public func update(
		paymentSessionId: String,
		session: MerchantUpdatePaymentSessionRequest,
		completion: @escaping ApiCompletion<Void>
	) {
		let api = createMerchantApi()

		let body = OAIUpdatePaymentSessionRequest1()
		body.data = OAIMerchantPaymentSessionPaymentSessionIdData()
		body.data.paymentRequestId = session.paymentRequestId
		body.data.merchantInfo = toDynamicPayload(payload: session.merchantInfo)

		api.merchantUpdatePaymentSession(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_MERCHANT_ID),
			paymentSessionId: paymentSessionId,
			updatePaymentSessionRequest1: body,
			completionHandler: { error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(Void()))
			})
	}

	public func delete(
		paymentSessionId: String,
		completion: @escaping ApiCompletion<Void>
	) {
		let api = createMerchantApi()

		api.deletePaymentSession(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_MERCHANT_ID),
			paymentSessionId: paymentSessionId,
			completionHandler: { error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(Void()))
			}
		)
	}
}