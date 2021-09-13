import UIKit
import VillageWalletSDK

class OpenApiGiftingProductDiscount: GiftingProductDiscount {
	private let discount: OAIGiftingProductDiscount

	init(discount: OAIGiftingProductDiscount) {
		self.discount = discount
	}

	var discountId: String {
		discount.discountId
	}

	var description: String {
		discount._description
	}

	var percentageDiscount: Int {
		discount.percentageDiscount.intValue
	}

	var startDate: Date {
		DateUtils.dateFromString(discount.startDate)!
	}

	var endDate: Date {
		DateUtils.dateFromString(discount.endDate)!
	}
}