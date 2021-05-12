import UIKit
import VillageWalletSDK

class OpenApiTokenizeAndroidPayResponse: TokenizeAndroidPayResponse {
	private let response: OAITokenizeAndroidPayResponse

	init(response: OAITokenizeAndroidPayResponse) {
		self.response = response
	}

	var paymentInstrumentId: String {
		response.paymentInstrumentId
	}

	var stepUpToken: String {
		response.stepUpToken
	}
}