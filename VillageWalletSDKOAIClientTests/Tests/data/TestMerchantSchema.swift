import Foundation
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

func aNewSchema() -> MerchantSchema { TestMerchantSchema() }

class TestMerchantSchema: MerchantSchema {
	var schema: [String: AnyObject] {
		[:]
	}

	var type: String? {
		nil
	}

	var description: String? {
		nil
	}

	var created: Date? {
		nil
	}
}