import UIKit
import VillageWalletSDK

public class OpenApiGooglePayApiRepository: OpenApiClientFactory, GooglePayApiRepository {
	public func tokenize(
		tokenizeGooglePayRequest: TokenizeGooglePayRequest,
		completion: @escaping ApiCompletion<TokenizeGooglePayResponse>
	) {
		let api = createWalletManagementApi()
		let body = OAITokenizeGooglePayRequest.fromTokenizeGooglePayRequest(tokenizeGooglePayRequest)

		api.googlepayTokenizePost(
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

				completion(.success(OpenApiTokenizeGooglePayResponse(
					response: results!
				)))
			}
		)
	}

	public func guestTokenize(
		tokenizeGooglePayRequest: TokenizeGooglePayRequest,
		completion: @escaping ApiCompletion<TokenizeGooglePayResponse>
	) {
		let api = createWalletManagementApi()
		let body = OAITokenizeGooglePayRequest.fromTokenizeGooglePayRequest(tokenizeGooglePayRequest)

		api.guestGooglepayTokenizePost(
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

				completion(.success(OpenApiTokenizeGooglePayResponse(
					response: results!
				)))
			}
		)
	}

	public func update(
		paymentToken: String,
		tokenizeGooglePayRequest: TokenizeGooglePayRequest,
		completion: @escaping ApiCompletion<TokenizeGooglePayResponse>
	) {
		let api = createWalletManagementApi()
		let body = OAITokenizeGooglePayRequest.fromTokenizeGooglePayRequest(tokenizeGooglePayRequest)

		api.googlepayTokenizePaymentTokenPost(
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

				completion(.success(OpenApiTokenizeGooglePayResponse(
					response: results!
				)))
			}
		)
	}
}

extension OAITokenizeGooglePayRequest {
	static func fromTokenizeGooglePayRequest(
		_ request: TokenizeGooglePayRequest
	) -> OAITokenizeGooglePayRequest {
		let body = OAITokenizeGooglePayRequest()
		body.instrumentType = request.instrumentType
		body.comment = request.comment
		body.tokenData = request.tokenData

		return body
	}
}