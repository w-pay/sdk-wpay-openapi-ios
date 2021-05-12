import UIKit
import VillageWalletSDK

public class OpenApiMerchantsApiRepository: OpenApiClientFactory, MerchantsApiRepository {
	public func profile(completion: @escaping ApiCompletion<MerchantProfileResponse>) {
		let api = createWalletManagementApi()

		api.merchantsProfileGet(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiMerchantProfileResponse(
					response: results!
				)))
			}
		)
	}
}
