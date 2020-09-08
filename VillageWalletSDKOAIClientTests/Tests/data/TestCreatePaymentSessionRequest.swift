import Foundation
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

class TestCreatePaymentSessionRequest: CreatePaymentSessionRequest {
	var location: String {
		"somewhere"
	}

	var merchantInfo: DynamicPayload {
		TestCreatePaymentSessionRequestPayload()
	}

	var generateQR: Bool {
		true
	}

	var timeToLivePaymentSession: Int {
		0
	}

	var timeToLiveQR: Int {
		0
	}
}

class TestCreatePaymentSessionRequestPayload: DynamicPayload {
	var schemaId: String? {
		"abc123"
	}

	var payload: [String: AnyObject] {
		[:]
	}
}