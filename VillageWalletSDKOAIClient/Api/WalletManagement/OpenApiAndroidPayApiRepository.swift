import UIKit
import VillageWalletSDK

public class OpenApiAndroidPayApiRepository: OpenApiClientFactory, AndroidPayApiRepository {
	public func tokenize(
		tokenizeAndroidPayRequest: TokenizeAndroidPayRequest,
		completion: @escaping ApiCompletion<TokenizeAndroidPayResponse>
	) {
		let api = createWalletManagementApi()
		let body = OAITokenizeAndroidPayRequest.fromTokenizeAndroidPayRequest(tokenizeAndroidPayRequest)

		api.androidpayTokenizePost(
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

				completion(.success(OpenApiTokenizeAndroidPayResponse(
					response: results!
				)))
			}
		)
	}

	public func update(
		paymentInstrumentId: String,
		tokenizeAndroidPayRequest: TokenizeAndroidPayRequest,
		completion: @escaping ApiCompletion<TokenizeAndroidPayResponse>
	) {
		let api = createWalletManagementApi()
		let body = OAITokenizeAndroidPayRequest.fromTokenizeAndroidPayRequest(tokenizeAndroidPayRequest)

		api.androidpayTokenizePaymentInstrumentIdPost(
			withPaymentInstrumentId: paymentInstrumentId,
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

				completion(.success(OpenApiTokenizeAndroidPayResponse(
					response: results!
				)))
			}
		)
	}
}

extension OAITokenizeAndroidPayRequest {
	static func fromTokenizeAndroidPayRequest(
		_ request: TokenizeAndroidPayRequest
	) -> OAITokenizeAndroidPayRequest {
		let body = OAITokenizeAndroidPayRequest()
		body.encryptedMessage = request.encryptedMessage
		body.ephemeralPublicKey = request.ephemeralPublicKey
		body.tag = request.tag
		body.publicKeyHash = request.publicKeyHash
		body.instrumentType = request.instrumentType
		body.comment = request.comment

		if let primary = request.primary {
			body.primary = NSNumber(value: primary)
		}

		return body
	}
}