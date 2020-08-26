import Foundation
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

class TestCustomerUpdatePaymentSessionRequest: CustomerUpdatePaymentSessionRequest {
	func customerInfo() -> DynamicPayload {
		TestUpdatePaymentSessionRequestPayload()
	}
}

class TestMerchantUpdatePaymentSessionRequest: MerchantUpdatePaymentSessionRequest {
	func paymentRequestId() -> String? {
		nil
	}

	func merchantInfo() -> DynamicPayload {
		TestUpdatePaymentSessionRequestPayload()
	}
}

class TestUpdatePaymentSessionRequestPayload: DynamicPayload {
	func schemaId() -> String? {
		"abc123"
	}

	func payload() -> [String: AnyObject] {
		[:]
	}
}