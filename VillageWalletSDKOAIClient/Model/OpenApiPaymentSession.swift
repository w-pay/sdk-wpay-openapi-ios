import UIKit
import VillageWalletSDK

class OpenApiPaymentSession: PaymentSession {
	private let session: OAIPaymentSession

	init(session: OAIPaymentSession) {
		self.session = session
	}

	var paymentSessionId: String {
		session.paymentSessionId
	}

	var merchantId: String {
		session.merchantId
	}

	var walletId: String? {
		session.walletId
	}

	var expiryTime: Date {
		session.expiryTime
	}

	var location: String {
		session.location
	}

	var merchantInfo: DynamicPayload {
		OpenApiDynamicPayload(payload: session.merchantInfo)
	}

	var customerInfo: DynamicPayload? {
		guard let info = session.customerInfo else {
			return nil
		}

		return OpenApiDynamicPayload(payload: info)
	}
}
