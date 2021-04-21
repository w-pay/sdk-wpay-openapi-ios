import UIKit
import VillageWalletSDK

class OpenApiTermsAndConditionsAcceptances: TermsAndConditionsAcceptances {
	private let acceptances: [OAICustomerTermsAndConditionsAcceptance]

	init(acceptances: [OAICustomerTermsAndConditionsAcceptance]) {
		self.acceptances = acceptances
	}

	var termsAndConditionsAcceptances: [TermsAndConditionsAcceptance] {
		acceptances.map { it in OpenApiTermsAndConditionsAcceptance(acceptance: it) }
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
