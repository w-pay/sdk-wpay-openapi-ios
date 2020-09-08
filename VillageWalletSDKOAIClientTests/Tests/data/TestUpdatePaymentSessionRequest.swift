import Foundation
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

class TestCustomerUpdatePaymentSessionRequest: CustomerUpdatePaymentSessionRequest {
	var customerInfo: DynamicPayload {
		TestUpdatePaymentSessionRequestPayload()
	}
}

class TestMerchantUpdatePaymentSessionRequest: MerchantUpdatePaymentSessionRequest {
	var paymentRequestId: String? {
		nil
	}

	var merchantInfo: DynamicPayload {
		TestUpdatePaymentSessionRequestPayload()
	}
}

class TestUpdatePaymentSessionRequestPayload: DynamicPayload {
	var schemaId: String? {
		"abc123"
	}

	var payload: [String: AnyObject] {
		[:]
	}
}