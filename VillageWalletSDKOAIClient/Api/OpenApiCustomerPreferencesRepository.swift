import UIKit
import VillageWalletSDK

class OpenApiCustomerPreferencesRepository: OpenApiClientFactory, CustomerPreferencesRepository {
	public func get(completion: @escaping ApiCompletion<CustomerPreferences>) {
		let api = createCustomerApi()

		api.getCustomerPreferences(
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

				completion(.success(OpenApiCustomerPreferences(prefs: results!.data)))
			})
	}

	public func set(
		preferences: CustomerPreferences,
		completion: @escaping ApiCompletion<Void>
	) {
		let api = createCustomerApi()

		let body = OAICustomerPreferences()
		body.data = OAIPreferencesCustomer.fromCustomerPreferences(preferences)
		body.meta = OAIMeta()

		api.setCustomerPreferencesWithXApiKey(
			getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			customerPreferences: body,
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
