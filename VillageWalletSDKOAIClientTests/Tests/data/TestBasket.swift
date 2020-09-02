import Foundation
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

func aNewBasket() -> Basket { TestBasket() }

class TestBasket: Basket {
	var items: [BasketItem] {
		[ TestBasketItem() ]
	}
}

class TestBasketItem: BasketItem {
	var label: String {
		"Item 1"
	}

	var description: String? {
		"This is item 1"
	}

	var quantity: Int? {
		Int(3)
	}

	var unitPrice: Decimal? {
		Decimal(2.1)
	}

	var unitMeasure: String? {
		"EACH"
	}

	var totalPrice: Decimal? {
		Decimal(6.3)
	}

	var tags: [String: String] {
		[
			"property1": "string",
			"property2": "string"
		]
	}
}
