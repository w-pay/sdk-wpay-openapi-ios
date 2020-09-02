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
	var schemaId: String? {
		"abc123"
	}

	var payload: [String: AnyObject] {
		[:]
	}
}

class TestMerchantPayload: MerchantPayload {
	var schemaId: String? {
		"abc123"
	}

	var payload: [String: AnyObject] {
		[:]
	}
}
