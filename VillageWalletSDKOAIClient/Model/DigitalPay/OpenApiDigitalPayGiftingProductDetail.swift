import UIKit
import VillageWalletSDK

class OpenApiDigitalPayGiftingProductDetail: DigitalPayGiftingProductDetail {
	private let data: OAIGiftingProductDetail

	init(data: OAIGiftingProductDetail) {
		self.data = data
	}

	var redemptionInstructions: String? {
		data.redemptionInstructions
	}

	var redemptionType: DigitalPayGiftingProductDetailRedemptionType {
		DigitalPayGiftingProductDetailRedemptionType(rawValue: data.redemptionType.uppercased())!
	}

	var termsAndConditions: String? {
		data.termsAndConditions
	}

	var minValue: Int {
		data.minValue.intValue
	}

	var maxValue: Int {
		data.maxValue.intValue
	}

	var expiryPeriodInDays: Int? {
		data.expiryPeriodInDays?.intValue
	}

	var expiryPeriodText: String? {
		data.expiryPeriodText
	}

	var isActive: Bool {
		data.isActive.boolValue
	}

	var redemptionStores: [String]? {
		data.redemptionStores
	}

	var availability: DigitalPayGiftingProductDetailAvailability {
		DigitalPayGiftingProductDetailAvailability(rawValue: data.availability.uppercased())!
	}

	var designs: [GiftingProductDesign] {
		data.designs.map(
			{ it in OpenApiGiftingProductDesign(design: it as! OAIGiftingProductDesign) }
		)
	}

	var productId: String {
		data.productId
	}

	var name: String {
		data.name
	}

	var barCodeType: DigitalPayGiftingProductBarCodeType {
		DigitalPayGiftingProductBarCodeType(rawValue: data.barCodeType.uppercased())!
	}

	var lastUpdateDateTime: Date {
		DateUtils.dateFromString(data.lastUpdateDateTime)!
	}

	var defaultDesign: GiftingProductDesign {
		OpenApiGiftingProductDesign(design: data.defaultDesign)
	}

	var discountOffered: GiftingProductDiscount? {
		guard let discount = data.discountOffered else {
			return nil
		}

		return OpenApiGiftingProductDiscount(discount: discount)
	}
}
