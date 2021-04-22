import UIKit
import VillageWalletSDK

public class OpenApiAdministrationApiRepository: OpenApiClientFactory, AdministrationApiRepository {
	public func checkHealth(completion: @escaping ApiCompletion<HealthCheck>) {
		let api = createAdministrationApi()

		api.checkHealth(
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiHealthCheck(check: results!.data)))
			})
	}
}