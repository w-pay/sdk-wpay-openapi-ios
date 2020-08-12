import Foundation
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

func aNewPosPayload() -> PosPayload {
	TestPosPayload()
}

func aNewMerchantPayload() -> MerchantPayload {
	TestMerchantPayload()
}

class TestPosPayload: PosPayload {
	func schemaId() -> String? {
		"abc123"
	}

	func payload() -> [String: AnyObject] {
		[:]
	}
}

class TestMerchantPayload: MerchantPayload {
	func schemaId() -> String? {
		"abc123"
	}

	func payload() -> [String: AnyObject] {
		[:]
	}
}
