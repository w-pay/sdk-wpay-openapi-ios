import UIKit
import VillageWalletSDK

public class OpenApiMerchantPreferencesRepository: OpenApiClientFactory, MerchantPreferencesRepository {
	public func get(completion: @escaping ApiCompletion<MerchantPreferences>) {
		let api = createMerchantApi()

		api.getMerchantPreferences(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_MERCHANT_ID),
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

		api.setMerchantPreferencesWithXMerchantID(
			self.getDefaultHeader(client: api.apiClient, name: X_MERCHANT_ID),
			merchantPreferences: body,
			completionHandler: { error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(Void()))
			})
	}
}