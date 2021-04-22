import UIKit
import VillageWalletSDK

class OpenApiBasket: Basket {
	private let basket: OAIBasket

	init(basket: OAIBasket) {
		self.basket = basket
	}

	var items: [BasketItem] {
		basket.items.map({ item in OpenApiBasketItem(item: item as! OAIBasketItems) })
	}
}

class OpenApiBasketItem: BasketItem {
	private let item: OAIBasketItems

	init(item: OAIBasketItems) {
		self.item = item
	}

	var label: String {
		item.label
	}

	var description: String? {
		item.description
	}

	var quantity: Int? {
		item.quantity.intValue
	}

	var unitPrice: Decimal? {
		item.unitPrice.decimalValue
	}

	var unitMeasure: String? {
		item.unitMeasure
	}

	var totalPrice: Decimal? {
		item.totalPrice.decimalValue
	}

	var tags: [String: String] {
		item.tags
	}
}
