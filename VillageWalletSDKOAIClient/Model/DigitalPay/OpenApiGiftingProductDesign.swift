import UIKit
import VillageWalletSDK

class OpenApiGiftingProductDesign: GiftingProductDesign {
	private let design: OAIGiftingProductDesign

	init(design: OAIGiftingProductDesign) {
		self.design = design
	}

	var designId: String {
		design.designId
	}

	var designType: GiftingProductDesignDesignType {
		GiftingProductDesignDesignType(rawValue: design.designType.uppercased())!
	}

	var imageUrl: String {
		design.imageUrl
	}
}
