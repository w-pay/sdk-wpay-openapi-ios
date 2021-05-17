import UIKit
import VillageWalletSDK

public class OpenApiCardsApiRepository: OpenApiClientFactory, CardsApiRepository {
	public func initCapture(
		initiateCardCaptureRequest: InitiateCardCaptureRequest,
		completion: @escaping ApiCompletion<InitiateCardCaptureResponse>
	) {
		let api = createWalletManagementApi()
		let body = OAIInitiateCardCaptureRequest()
		body.clientReference = initiateCardCaptureRequest.clientReference

		api.cardsInitcapturePost(
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

				completion(.success(OpenApiInitiateCardCaptureResponse(
					response: results!
				)))
			}
		)
	}

	public func guestInitCapture(
		initiateCardCaptureRequest: InitiateCardCaptureRequest,
		completion: @escaping ApiCompletion<InitiateCardCaptureResponse>
	) {
		let api = createWalletManagementApi()
		let body = OAIInitiateCardCaptureRequest()
		body.clientReference = initiateCardCaptureRequest.clientReference

		api.guestCardsInitcapturePost(
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

				completion(.success(OpenApiInitiateCardCaptureResponse(
					response: results!
				)))
			}
		)
	}
}
