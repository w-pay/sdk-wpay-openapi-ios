import UIKit
import VillageWalletSDK

class OpenApiMerchantPayload: MerchantPayload {
	private let aPayload: OAIMerchantPayload

	init(aPayload: OAIMerchantPayload) {
		self.aPayload = aPayload
	}

	var schemaId: String? {
		aPayload.schemaId
	}

	var payload: [String: AnyObject] {
		aPayload.payload
	}
}
