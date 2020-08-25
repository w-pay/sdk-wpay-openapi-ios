import Foundation
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

func aNewSchema() -> MerchantSchema { TestMerchantSchema() }

class TestMerchantSchema: MerchantSchema {
	func schema() -> [String: AnyObject] {
		[:]
	}

	func type() -> String? {
		nil
	}

	func description() -> String? {
		nil
	}

	func created() -> Date? {
		nil
	}
}