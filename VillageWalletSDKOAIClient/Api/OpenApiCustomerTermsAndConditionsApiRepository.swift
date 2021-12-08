import UIKit
import VillageWalletSDK

public class OpenApiCustomerTermsAndConditionsApiRepository
	: OpenApiClientFactory, CustomerTermsAndConditionsApiRepository
{
	public func get(
		type: String?,
		version: String?,
		completion: @escaping ApiCompletion<TermsAndConditionsAcceptances>
	) {
		let api = createCustomerApi()

		api.getCustomerTermsAndConditionsAcceptance(
			withXWalletID: getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			type: type,
			version: version,
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiTermsAndConditionsAcceptances(
					acceptances: results!.data.termsAndConditionsAcceptances as! [OAICustomerTermsAndConditionsAcceptance]
				)))
			}
		)
	}

	public func accept(
		acceptTermsAndConditionsRequest: AcceptTermsAndConditionsRequest,
		completion: @escaping ApiCompletion<Void>
	) {
		let api = createCustomerApi()

		let body = OAICustomerTermsAndConditions()
		body.data = OAIInstoreCustomerTermsandconditionsAcceptanceData()
		body.data.type = acceptTermsAndConditionsRequest.type
		body.data.version = acceptTermsAndConditionsRequest.version

		body.meta = OAIMeta()

		api.acceptCustomerTermsAndConditions(
			withXWalletID: getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			customerTermsAndConditions: body,
			completionHandler: { error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(Void()))
			}
		)
	}
}
