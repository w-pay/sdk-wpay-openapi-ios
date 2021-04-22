import Foundation
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

var aNewCustomerPaymentRequest: CustomerPaymentRequest {
	TestCustomerPaymentRequest()
}

class TestCustomerPaymentRequest: CustomerPaymentRequest {
	var merchantId: String {
		"abc123"
	}

	var basket: Basket? {
		aNewBasket()
	}

	var paymentRequestId: String {
		"def456"
	}

	var merchantReferenceId: String {
		"hij789"
	}

	var grossAmount: Decimal {
		Decimal(10)
	}
}

class TestPaymentPreferences : PaymentPreferences {
	var primaryInstrumentId: String = "90271"

	var secondaryInstruments: SecondaryInstrumentPreferences? = TestSecondaryInstrumentPreferences()
}

class TestSecondaryInstrumentPreferences: SecondaryInstrumentPreferences {
	var enableSecondaryInstruments: Bool? = true

	var order: SecondaryInstrumentOrder? = nil

	var exclude: [String]? = nil

	var include: [String]? = nil
}