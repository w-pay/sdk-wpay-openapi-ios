import UIKit
import VillageWalletSDK

class OpenApiTokenizeApplePayResponse: TokenizeApplePayResponse {
	private let response: OAITokenizeApplePayResponse

	init(response: OAITokenizeApplePayResponse) {
		self.response = response
	}

	var paymentInstrumentId: String {
		response.paymentInstrumentId
	}

	var stepUpToken: String {
		response.stepUpToken
	}
}