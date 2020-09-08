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