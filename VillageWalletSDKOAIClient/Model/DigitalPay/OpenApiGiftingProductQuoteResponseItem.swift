import UIKit
import VillageWalletSDK

class OpenApiGiftingProductQuoteResponseItem: GiftingProductQuoteResponseItem {
	private let items: OAIInlineResponse2002DataOrderItems

	init(items: OAIInlineResponse2002DataOrderItems) {
		self.items = items
	}

	var designId: String {
		items.designId
	}

	var amount: Decimal {
		items.amount.decimalValue
	}

	var unitPrice: Decimal {
		items.unitPrice.decimalValue
	}

	var totalPrice: Decimal {
		items.totalPrice.decimalValue
	}

	var quantity: Int {
		items.quantity.intValue
	}

	var isGifting: Bool {
		items.isGifting.boolValue
	}

	var mobileNumber: String? {
		items.mobileNumber
	}
}
