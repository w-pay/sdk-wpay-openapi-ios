import UIKit
import VillageWalletSDK

public class OpenApiApplePayApiRepository: OpenApiClientFactory, ApplePayApiRepository {
	public func tokenize(
		tokenizeApplePayRequest: TokenizeApplePayRequest,
		completion: @escaping ApiCompletion<TokenizeApplePayResponse>
	) {
		let api = createWalletManagementApi()
		let body = OAITokenizeApplePayRequest.fromTokenizeApplePayRequest(tokenizeApplePayRequest)

		api.applepayTokenizePost(
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

				completion(.success(OpenApiTokenizeApplePayResponse(
					response: results!
				)))
			}
		)
	}

	public func guestTokenize(
		tokenizeApplePayRequest: TokenizeApplePayRequest,
		completion: @escaping ApiCompletion<TokenizeApplePayResponse>
	) {
		let api = createWalletManagementApi()
		let body = OAIGuestTokenizeApplePayRequest()

		body.data = tokenizeApplePayRequest.data
		body.ephemeralPublicKey = tokenizeApplePayRequest.ephemeralPublicKey
		body.publicKeyHash = tokenizeApplePayRequest.publicKeyHash
		body.transactionId = tokenizeApplePayRequest.transactionId
		body.instrumentType = tokenizeApplePayRequest.instrumentType
		body.signature = tokenizeApplePayRequest.signature
		body.version = tokenizeApplePayRequest.version
		body.instrumentType = tokenizeApplePayRequest.instrumentType
		body.comment = tokenizeApplePayRequest.comment
		body.applicationData = tokenizeApplePayRequest.applicationData

		api.guestApplepayTokenizePost(
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

				completion(.success(OpenApiTokenizeApplePayResponse(
					response: results!
				)))
			}
		)
	}

	public func update(
		paymentInstrumentId: String,
		tokenizeApplePayRequest: TokenizeApplePayRequest,
		completion: @escaping ApiCompletion<TokenizeApplePayResponse>
	) {
		let api = createWalletManagementApi()
		let body = OAITokenizeApplePayRequest.fromTokenizeApplePayRequest(tokenizeApplePayRequest)

		api.applepayTokenizePaymentInstrumentIdPost(
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

				completion(.success(OpenApiTokenizeApplePayResponse(
					response: results!
				)))
			}
		)
	}
}

extension OAITokenizeApplePayRequest {
	static func fromTokenizeApplePayRequest(
		_ request: TokenizeApplePayRequest
	) -> OAITokenizeApplePayRequest {
		let body = OAITokenizeApplePayRequest()
		body.data = request.data
		body.ephemeralPublicKey = request.ephemeralPublicKey
		body.publicKeyHash = request.publicKeyHash
		body.transactionId = request.transactionId
		body.instrumentType = request.instrumentType
		body.signature = request.signature
		body.version = request.version
		body.instrumentType = request.instrumentType
		body.comment = request.comment
		body.applicationData = request.applicationData

		if let primary = request.primary {
			body.primary = NSNumber(value: primary)
		}

		return body
	}
}
