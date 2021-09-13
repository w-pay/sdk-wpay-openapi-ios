import UIKit
import VillageWalletSDK

class OpenApiDigitalPayGiftingQuoteResponse: DigitalPayGiftingQuoteResponse {
	private let data: OAIInlineResponse2002Data

	init(data: OAIInlineResponse2002Data) {
		self.data = data
	}

	var quoteId: String {
		data.quoteId
	}

	var subTotalAmount: Decimal {
		data.subTotalAmount.decimalValue
	}

	var discountAmount: Decimal {
		data.discountAmount.decimalValue
	}

	var totalOrderAmount: Decimal {
		data.totalOrderAmount.decimalValue
	}

	var orderItems: GiftingProductQuoteResponseItem {
		OpenApiGiftingProductQuoteResponseItem(items: data.orderItems)
	}
}