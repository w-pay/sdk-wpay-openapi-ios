import Foundation
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

func aNewPaymentRequest() -> NewPaymentRequest {
	TestNewPaymentRequest()
}

class TestNewPaymentRequest: NewPaymentRequest {
	var merchantReferenceId: String {
		"123456"
	}

	var grossAmount: Decimal {
		Decimal(12000)
	}

	var generateQR: Bool {
		true
	}

	var maxUses: Int? {
		1
	}

	var timeToLivePayment: Int? {
		300
	}

	var timeToLiveQR: Int? {
		60
	}

	var specificWalletId: String? {
		""
	}

	var basket: Basket? {
		aNewBasket()
	}

	var posPayload: PosPayload? {
		aNewPosPayload()
	}

	var merchantPayload: MerchantPayload? {
		aNewMerchantPayload()
	}
}