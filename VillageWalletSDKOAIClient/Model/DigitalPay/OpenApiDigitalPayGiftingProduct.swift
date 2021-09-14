import UIKit
import VillageWalletSDK

class OpenApiDigitalPayGiftingProduct: DigitalPayGiftingProduct {
	private let product: OAIGiftingProduct

	init(product: OAIGiftingProduct) {
		self.product = product
	}

	var productId: String {
		product.productId
	}

	var name: String {
		product.name
	}

	var barCodeType: DigitalPayGiftingProductBarCodeType {
		DigitalPayGiftingProductBarCodeType(rawValue: product.barCodeType.uppercased())!
	}

	var lastUpdateDateTime: Date {
		DateUtils.dateFromString(product.lastUpdateDateTime)!
	}

	var defaultDesign: GiftingProductDesign {
		OpenApiGiftingProductDesign(design: product.defaultDesign)
	}

	var discountOffered: GiftingProductDiscount? {
		guard let discount = product.discountOffered else {
			return nil
		}

		return OpenApiGiftingProductDiscount(discount: discount)
	}
}

extension OAIGiftingProductOrderItem {
	static func fromGiftingProductOrderItem(
		_ productItem: GiftingProductOrderItem?
	) -> OAIGiftingProductOrderItem? {
		guard let theItem = productItem else { return nil }

		let item = OAIGiftingProductOrderItem()
		item.designId = theItem.designId
		item.amount = theItem.amount as NSNumber
		item.quantity = theItem.quantity as NSNumber
		item.isGifting = theItem.isGifting as NSNumber
		item.recipientDetails =
			OAIGiftingProductOrderItemRecipientDetails.fromRecipientDetail(theItem.recipientDetails)

		return item
	}
}

extension OAIGiftingProductOrderItemRecipientDetails {
	static func fromRecipientDetail(
		_ detail: RecipientDetail?
	) -> OAIGiftingProductOrderItemRecipientDetails? {
		guard let theDetails = detail else { return nil }

		let details = OAIGiftingProductOrderItemRecipientDetails()
		details.toName = theDetails.toName
		details.fromName = theDetails.fromName
		details.message = theDetails.message
		details.imageUrl = theDetails.imageUrl
		details.mobileNumber = theDetails.mobileNumber

		return details
	}
}