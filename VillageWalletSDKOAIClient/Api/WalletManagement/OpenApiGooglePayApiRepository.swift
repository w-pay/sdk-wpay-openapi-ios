import UIKit
import VillageWalletSDK

public class OpenApiGooglePayApiRepository: OpenApiClientFactory, GooglePayApiRepository {
	public func tokenize(
		tokenizeGooglePayRequest: TokenizeGooglePayRequest,
		completion: @escaping ApiCompletion<TokenizeGooglePayResponse>
	) {
		// TODO: Implement me
	}

	public func guestTokenize(
		tokenizeGooglePayRequest: TokenizeGooglePayRequest,
		completion: @escaping ApiCompletion<TokenizeGooglePayResponse>
	) {
		// TODO: Implement me
	}

	public func update(
		paymentToken: String,
		tokenizeGooglePayRequest: TokenizeGooglePayRequest,
		completion: @escaping ApiCompletion<TokenizeGooglePayResponse>
	) {
		// TODO: Implement me
	}
}
