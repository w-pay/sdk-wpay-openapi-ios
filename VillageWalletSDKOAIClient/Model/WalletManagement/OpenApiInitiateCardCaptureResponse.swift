import UIKit
import VillageWalletSDK

class OpenApiInitiateCardCaptureResponse: InitiateCardCaptureResponse {
	private let response: OAIInitiateCardCaptureResponse

	init(response: OAIInitiateCardCaptureResponse) {
		self.response = response
	}

	var cardCaptureURL: String {
		response.cardCaptureURL
	}

	var transactionRef: String {
		response.transactionRef
	}
}
