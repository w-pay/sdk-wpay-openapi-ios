import UIKit
import VillageWalletSDK

public class OpenApiMerchantPreferencesRepository: OpenApiClientFactory, MerchantPreferencesRepository {
	public func get(completion: @escaping ApiCompletion<MerchantPreferences>) {
		let api = createMerchantApi()

		api.getMerchantPreferences(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(result!.data))
			})
	}

	public func set(preferences: MerchantPreferences, completion: @escaping ApiCompletion<Void>) {
		let api = createMerchantApi()

		let body = OAIMerchantPreferences()
		body.data = preferences

		api.setMerchantPreferencesWithXApiKey(
			getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			merchantPreferences: body,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			completionHandler: { error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(Void()))
			})
	}
}