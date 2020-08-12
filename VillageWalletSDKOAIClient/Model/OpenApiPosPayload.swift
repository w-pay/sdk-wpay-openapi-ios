import UIKit
import VillageWalletSDK

class OpenApiPosPayload: PosPayload {
	private let thePayload: OAIPosPayload

	init(thePayload: OAIPosPayload) {
		self.thePayload = thePayload
	}

	func schemaId() -> String? {
		thePayload.schemaId
	}

	func payload() -> [String: AnyObject] {
		thePayload.payload
	}
}
