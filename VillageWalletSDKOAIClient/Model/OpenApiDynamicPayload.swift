import UIKit
import VillageWalletSDK

class OpenApiDynamicPayload: DynamicPayload {
	private let aPayload: OAIDynamicPayload

	init(payload: OAIDynamicPayload) {
		self.aPayload = payload
	}

	var schemaId: String? {
		aPayload.schemaId
	}

	var payload: [String: AnyObject] {
		aPayload.payload as [String: AnyObject]
	}
}
