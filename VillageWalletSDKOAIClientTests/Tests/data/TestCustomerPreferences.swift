import UIKit
import VillageWalletSDK

class TestCustomerPreferences: CustomerPreferences {
	var general: Preferences? = [:]

	var payments: PaymentPreferences? = TestPaymentPreferences()
}
