import UIKit
import VillageWalletSDK

class OpenApiTermsAndConditionsAcceptances: TermsAndConditionsAcceptances {
	private let acceptances: [OAICustomerTermsAndConditionsAcceptance]

	init(acceptances: [OAICustomerTermsAndConditionsAcceptance]) {
		self.acceptances = acceptances
	}

	var termsAndConditionsAcceptances: [TermsAndConditionsAcceptance] {
		acceptances.map(OpenApiTermsAndConditionsAcceptance.init)
	}
}

class OpenApiTermsAndConditionsAcceptance: TermsAndConditionsAcceptance {
	private let acceptance: OAICustomerTermsAndConditionsAcceptance

	init(acceptance: OAICustomerTermsAndConditionsAcceptance) {
		self.acceptance = acceptance
	}

	var type: String {
		acceptance.type
	}

	var version: String {
		acceptance.version
	}

	var timestamp: Decimal {
		acceptance.timestamp.decimalValue
	}


}
