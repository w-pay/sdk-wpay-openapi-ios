import UIKit
import VillageWalletSDK

public class OpenApiApplePayApiRepository: OpenApiClientFactory, ApplePayApiRepository {
	public func tokenize(
		tokenizeApplePayRequest: TokenizeApplePayRequest,
		completion: @escaping ApiCompletion<TokenizeApplePayResponse>
	) {
		// TODO: Implement me
	}

	public func guestTokenize(
		tokenizeApplePayRequest: TokenizeApplePayRequest,
		completion: @escaping ApiCompletion<TokenizeApplePayResponse>
	) {
		// TODO: Implement me
	}

	public func update(
		paymentInstrumentId: String,
		tokenizeApplePayRequest: TokenizeApplePayRequest,
		completion: @escaping ApiCompletion<TokenizeApplePayResponse>
	) {
		// TODO: Implement me
	}
}
