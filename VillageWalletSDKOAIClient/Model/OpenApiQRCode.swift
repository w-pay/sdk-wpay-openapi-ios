import UIKit
import VillageWalletSDK

class OpenApiQRCode: QRCode {
	private let code: OAIQr

	init(code: OAIQr) {
		self.code = code
	}

	var qrId: String {
		code.qrId
	}

	var referenceId: String {
		code.referenceId
	}

	var referenceType: QRCodePaymentReferenceType? {
		QRCodePaymentReferenceType.valueOf(value: code.referenceType)
	}

	var content: String {
		code.content
	}

	var image: String {
		code.image
	}

	var expiryTime: Date? {
		code.expiryTime
	}
}
