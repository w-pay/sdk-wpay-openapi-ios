import Foundation
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

class TestUpdatePaymentSessionRequest: UpdatePaymentSessionRequest {
	func additionalInfo() -> DynamicPayload {
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