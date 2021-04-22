import UIKit
import VillageWalletSDK

public class OpenApiAndroidPayApiRepository: OpenApiClientFactory, AndroidPayApiRepository {
	public func tokenize(
		tokenizeAndroidPayRequest: TokenizeAndroidPayRequest,
		completion: @escaping ApiCompletion<TokenizeAndroidPayResponse>
	) {
		// TODO: Implement me
	}

	public func update(
		paymentInstrumentId: String,
		tokenizeAndroidPayRequest: TokenizeAndroidPayRequest,
		completion: @escaping ApiCompletion<TokenizeAndroidPayResponse>
	) {
		// TODO: Implement me
	}
}
