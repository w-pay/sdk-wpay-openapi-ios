import UIKit
import VillageWalletSDK

class OpenApiDigitalPayGiftingOrderResponse: DigitalPayGiftingOrderResponse {
	private let data: OAIInlineResponse2003Data

	init(data: OAIInlineResponse2003Data!) {
		self.data = data
	}

	var status: String {
		data.status
	}

	var orderId: String {
		data.orderId
	}

	var quoteNo: String {
		data.quoteNo
	}
}
