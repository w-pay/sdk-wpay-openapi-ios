import UIKit
import VillageWalletSDK

public class OpenApiWalletApiRepository: OpenApiClientFactory, WalletApiRepository {
	public func delete(
		walletDeleteRequest: WalletDeleteRequest,
		completion: @escaping ApiCompletion<WalletDeleteResponse>
	) {
		// TODO: Implement me
	}
}
