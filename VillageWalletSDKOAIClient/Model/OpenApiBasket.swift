import UIKit
import VillageWalletSDK

class OpenApiBasket: Basket {
	private let basket: OAIBasket

	init(basket: OAIBasket) {
		self.basket = basket
	}

	var items: [BasketItem] {
		self.basket.items.map({ item in OpenApiBasketItem(item: item as! OAIBasketItems) })
	}
}

class OpenApiBasketItem: BasketItem {
	private let item: OAIBasketItems

	init(item: OAIBasketItems) {
		self.item = item
	}

	var label: String {
		self.item.label
	}

	var description: String? {
		self.item.description
	}

	var quantity: Int? {
		self.item.quantity.intValue
	}

	var unitPrice: Decimal? {
		self.item.unitPrice.decimalValue
	}

	var unitMeasure: String? {
		self.item.unitMeasure
	}

	var totalPrice: Decimal? {
		self.item.totalPrice.decimalValue
	}

	var tags: [String: String] {
		self.item.tags
	}
}
