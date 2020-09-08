import Foundation
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

func aNewPaymentRequestQRCode() -> NewPaymentRequestQRCode {
	TestNewPaymentRequestQRCode()
}

class TestNewPaymentRequestQRCode: NewPaymentRequestQRCode {
	var referenceId: String {
		"abc123def"
	}

	var referenceType: QRCodePaymentReferenceType {
		QRCodePaymentReferenceType.PAYMENT_SESSION
	}

	var timeToLive: Int {
		0
	}
}