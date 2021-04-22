import UIKit
import VillageWalletSDK

public class OpenApiGiftcardsApiRepository: OpenApiClientFactory, GiftcardsApiRepository {
	public func tokenize(
		tokenizeGiftcardRequest: TokenizeGiftcardRequest,
		completion: @escaping ApiCompletion<TokenizeGiftcardResponse>
	) {
		// TODO: Implement me
	}

	public func guestTokenize(
		tokenizeGiftcardRequest: TokenizeGiftcardRequest,
		completion: @escaping ApiCompletion<TokenizeGiftcardResponse>
	) {
		// TODO: Implement me
	}

	public func balance(
		giftcardsBalanceRequest: GiftcardsBalanceRequest,
		completion: @escaping ApiCompletion<GiftcardsBalanceResponse>
	) {
		// TODO: Implement me
	}
}
