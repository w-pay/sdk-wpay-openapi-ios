import UIKit
import VillageWalletSDK

public class OpenApiWalletApiRepository: OpenApiClientFactory, WalletApiRepository {
	public func delete(
		walletDeleteRequest: WalletDeleteRequest,
		completion: @escaping ApiCompletion<WalletDeleteResponse>
	) {
		let api = createWalletManagementApi()
		let body = OAIDeleteWalletRequest()
		body.uid = walletDeleteRequest.uid
		body.shopperId = walletDeleteRequest.shopperId

		api.walletDeletePost(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			xJWSSignature: "",
			body: body,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			xEverydayPayWallet: getDefaultHeader(client: api.apiClient, name: X_EVERYDAY_PAY_WALLET),
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiWalletDeleteResponse()))
			}
		)
	}
}
