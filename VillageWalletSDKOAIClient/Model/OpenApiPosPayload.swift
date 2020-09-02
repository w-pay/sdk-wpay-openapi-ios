import UIKit
import VillageWalletSDK

class OpenApiPosPayload: PosPayload {
	private let thePayload: OAIPosPayload

	init(thePayload: OAIPosPayload) {
		self.thePayload = thePayload
	}

	var schemaId: String? {
		thePayload.schemaId
	}

	var payload: [String: AnyObject] {
		thePayload.payload
	}
}
