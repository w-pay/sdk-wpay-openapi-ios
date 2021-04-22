import UIKit
import VillageWalletSDK

class OpenApiPaymentPreferences: PaymentPreferences {
	private let prefs: OAIPreferencePayments

	init(prefs: OAIPreferencePayments) {
		self.prefs = prefs
	}

	var primaryInstrumentId: String {
		prefs.primaryInstrumentId
	}

	var secondaryInstruments: SecondaryInstrumentPreferences? {
		guard let prefs = prefs.secondaryInstruments else {
			return nil
		}

		return OpenApiSecondaryInstrumentPreferences(prefs: prefs)
	}
}

class OpenApiSecondaryInstrumentPreferences: SecondaryInstrumentPreferences {
	private let prefs: OAIPreferencePaymentsSecondaryInstruments

	init(prefs: OAIPreferencePaymentsSecondaryInstruments) {
		self.prefs = prefs
	}

	var enableSecondaryInstruments: Bool? {
		guard let result = prefs.enableSecondaryInstruments else {
			return nil
		}

		return result.boolValue
	}

	var order: SecondaryInstrumentOrder? {
		SecondaryInstrumentOrder(rawValue: prefs.order.uppercased())!
	}

	var exclude: [String]? {
		prefs.exclude
	}

	var include: [String]? {
		prefs.include
	}
}

extension OAIPreferencePayments {
	static func fromPaymentPreferences(_ prefs: PaymentPreferences?) -> OAIPreferencePayments? {
		guard let thePrefs = prefs else {
			return nil
		}

		let preferences = OAIPreferencePayments()
		preferences.primaryInstrumentId = thePrefs.primaryInstrumentId

		if let secondaryInstruments = thePrefs.secondaryInstruments {
			preferences.secondaryInstruments = OAIPreferencePaymentsSecondaryInstruments()
			preferences.secondaryInstruments.enableSecondaryInstruments = secondaryInstruments.enableSecondaryInstruments as NSNumber?
			preferences.secondaryInstruments.order = secondaryInstruments.order?.rawValue
			preferences.secondaryInstruments.exclude = secondaryInstruments.exclude
			preferences.secondaryInstruments.include = secondaryInstruments.include
		}

		return preferences
	}
}