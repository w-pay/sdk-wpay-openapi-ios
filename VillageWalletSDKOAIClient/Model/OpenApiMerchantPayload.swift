import UIKit
import VillageWalletSDK

class OpenApiMerchantPayload: MerchantPayload {
	private let aPayload: OAIMerchantPayload

	init(aPayload: OAIMerchantPayload) {
		self.aPayload = aPayload
	}

	func schemaId() -> String? {
		aPayload.schemaId
	}

	func payload() -> [String: AnyObject] {
		aPayload.payload
	}
}
