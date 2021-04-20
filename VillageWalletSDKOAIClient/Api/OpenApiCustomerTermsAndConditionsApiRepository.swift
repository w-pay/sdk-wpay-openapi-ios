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
		// TODO: Implement me
	}

	public func accept(
		acceptTermsAndConditionsRequest: AcceptTermsAndConditionsRequest,
		completion: @escaping ApiCompletion<Void>
	) {
		// TODO: Implement me
	}
}
