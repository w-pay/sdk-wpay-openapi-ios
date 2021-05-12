import UIKit
import VillageWalletSDK

public class OpenApiPayPalApiRepository: OpenApiClientFactory, PayPalApiRepository {
	public func tokenize(
		tokenizePaypalRequest: TokenizePaypalRequest,
		completion: @escaping ApiCompletion<TokenizePaypalResponse>
	) {
		let api = createWalletManagementApi()
		let body = OAITokenizePaypalRequest()
		body.nonce = tokenizePaypalRequest.nonce

		if let primary = tokenizePaypalRequest.primary {
			body.primary = NSNumber(value: primary)
		}

		api.paypalTokenizePost(
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

				completion(.success(OpenApiTokenizePaypalResponse(
					response: results!
				)))
			}
		)
	}

	public func guestTokenize(
		tokenizePaypalRequest: TokenizePaypalRequest,
		completion: @escaping ApiCompletion<TokenizePaypalResponse>
	) {
		let api = createWalletManagementApi()
		let body = OAIGuestTokenizePaypalRequest()
		body.nonce = tokenizePaypalRequest.nonce

		api.guestPaypalTokenizePost(
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

				completion(.success(OpenApiTokenizePaypalResponse(
					response: results!
				)))
			}
		)
	}
}
