import UIKit
import VillageWalletSDK

public class OpenApiPayPalApiRepository: OpenApiClientFactory, PayPalApiRepository {
	public func tokenize(
		tokenizePaypalRequest: TokenizePaypalRequest,
		completion: @escaping ApiCompletion<TokenizePaypalResponse>
	) {
		// TODO: Implement me
	}

	public func guestTokenize(
		tokenizePaypalRequest: TokenizePaypalRequest,
		completion: @escaping ApiCompletion<TokenizePaypalResponse>
	) {
		// TODO: Implement me
	}
}
