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
		body.data = OAIInstoreMerchantPaymentSessionData()
		body.data.location = request.location
		body.data.merchantInfo = toDynamicPayload(payload: request.merchantInfo)
		body.data.generateQR = request.generateQR as NSNumber
		body.data.timeToLivePaymentSession = request.timeToLivePaymentSession as NSNumber?
		body.data.timeToLiveQR = request.timeToLiveQR as NSNumber?

		body.meta = OAIMeta()

		api.createPaymentSession(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			createPaymentSessionRequest: body,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
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
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			paymentSessionId: paymentSessionId,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
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
		body.data = OAIInstoreMerchantPaymentSessionPaymentSessionIdData()
		body.data.paymentRequestId = session.paymentRequestId
		body.data.merchantInfo = toDynamicPayload(payload: session.merchantInfo)

		body.meta = OAIMeta()

		api.merchantUpdatePaymentSession(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			paymentSessionId: paymentSessionId,
			updatePaymentSessionRequest1: body,
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

	public func delete(
		paymentSessionId: String,
		completion: @escaping ApiCompletion<Void>
	) {
		let api = createMerchantApi()

		api.deletePaymentSession(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			paymentSessionId: paymentSessionId,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			completionHandler: { error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(Void()))
			}
		)
	}
}