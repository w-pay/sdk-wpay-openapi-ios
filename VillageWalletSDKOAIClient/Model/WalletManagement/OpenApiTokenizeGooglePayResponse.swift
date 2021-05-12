import UIKit
import VillageWalletSDK

class OpenApiTokenizeGooglePayResponse: TokenizeGooglePayResponse {
	private let response: OAITokenizeGooglePayResponse

	init(response: OAITokenizeGooglePayResponse) {
		self.response = response
	}

	var paymentToken: String {
		response.paymentToken
	}
}
