import UIKit
import VillageWalletSDK

class OpenApiCustomerPreferencesRepository: OpenApiClientFactory, CustomerPreferencesRepository {
	public func get(completion: @escaping ApiCompletion<CustomerPreferences>) {
		let api = createCustomerApi()

		// FIXME:
		/*api.getCustomerPreferences(
			withXWalletID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(results!.data))
			})*/
	}

	public func set(
		preferences: CustomerPreferences,
		completion: @escaping ApiCompletion<Void>
	) {
		let api = createCustomerApi()

		let body = OAICustomerPreferences()

		// FIXME:
		// body.data = preferences

		api.setCustomerPreferencesWithXWalletID(
			self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			customerPreferences: body,
			completionHandler: { error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(Void()))
			})
	}
}
