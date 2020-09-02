import Foundation
import Hamcrest
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

func isPosPayload() -> Matcher<PosPayload> {
	Matcher("Pos payload details") { (item) -> Bool in
		assertThat(item.schemaId, not(blankOrNilString()))
		assertThat(item.payload, not(nilValue()))

		return true
	}
}

func isMerchantPayload() -> Matcher<MerchantPayload> {
	Matcher("Merchant payload details") { (item) -> Bool in
		assertThat(item.schemaId, not(blankOrNilString()))
		assertThat(item.payload, not(nilValue()))

		return true
	}
}
