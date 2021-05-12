import UIKit
import VillageWalletSDK

class OpenApiTokenizePaypalResponse: TokenizePaypalResponse {
	private let response: AnyObject

	init(response: AnyObject) {
		self.response = response
	}

	var payPal: PaypalDetails {
		OpenApiTokenizePaypalDetails(details: response.payPal)
	}
}

class OpenApiTokenizePaypalDetails: PaypalDetails {
	private let details: OAITokenizePaypalResponsePayPal

	init(details: OAITokenizePaypalResponsePayPal) {
		self.details = details
	}

	var paymentInstrumentId: String {
		details.paymentInstrumentId
	}

	var status: PaypalStatusEnum {
		PaypalStatusEnum(rawValue: details.status.uppercased())!
	}

	var lastUpdated: String {
		details.lastUpdated
	}

	var lastUsed: String {
		details.lastUsed
	}

	var primary: Bool? {
		details.primary?.boolValue
	}

	var allowed: Bool? {
		details.allowed?.boolValue
	}

	var payPalId: String {
		details.payPalId
	}

	var customerId: String {
		details.customerId
	}
}