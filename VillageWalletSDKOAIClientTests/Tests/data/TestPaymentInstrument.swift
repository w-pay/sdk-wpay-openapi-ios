import Foundation
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

func aNewPaymentInstrument() -> PaymentInstrumentAddition {
	TestPaymentInstrumentAddition()
}

class TestPaymentInstrument: PaymentInstrument {
	var allowed: Bool {
		true
	}

	var cardSuffix: String {
		"1234"
	}

	var lastUpdated: Date {
		Date()
	}

	var lastUsed: Date? {
		Date()
	}

	var paymentInstrumentId: String {
		"abc123"
	}

	var paymentToken: String {
		"def123fgh"
	}

	var primary: Bool {
		true
	}

	var status: PaymentInstrumentStatus? {
		PaymentInstrumentStatus.VERIFIED
	}

	var wallet: Wallet {
		Wallet.MERCHANT
	}
}

class TestPaymentInstrumentAddition: PaymentInstrumentAddition {
	var clientReference: String {
		"abc123"
	}

	var wallet: Wallet {
		Wallet.EVERYDAY_PAY
	}
}