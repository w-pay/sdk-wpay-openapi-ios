import UIKit
import VillageWalletSDK

class OpenApiCustomerPreferences: CustomerPreferences {
	private let prefs: OAIPreferencesCustomer

	init(prefs: OAIPreferencesCustomer) {
		self.prefs = prefs
	}

	var payments: PaymentPreferences? {
		guard let prefs = prefs.payments else {
			return nil
		}

		return OpenApiPaymentPreferences(prefs: prefs)
	}

	var general: Preferences? {
		prefs.general
	}
}

extension OAIPreferencesCustomer {
	static func fromCustomerPreferences(_ prefs: CustomerPreferences?) -> OAIPreferencesCustomer? {
		guard let thePrefs = prefs else {
			return nil
		}

		let preferences = OAIPreferencesCustomer()
		preferences.general = thePrefs.general
		preferences.payments = OAIPreferencePayments.fromPaymentPreferences(thePrefs.payments)

		return preferences
	}
}
