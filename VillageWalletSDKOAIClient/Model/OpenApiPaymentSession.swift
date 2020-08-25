import UIKit
import VillageWalletSDK

class OpenApiPaymentSession: PaymentSession {
	private let session: OAIPaymentSession

	init(session: OAIPaymentSession) {
		self.session = session
	}

	func paymentSessionId() -> String {
		session.paymentSessionId
	}

	func merchantId() -> String {
		session.merchantId
	}

	func walletId() -> String? {
		session.walletId
	}

	func expiryTime() -> Date {
		session.expiryTime
	}

	func location() -> String {
		session.location
	}

	func merchantInfo() -> DynamicPayload {
		OpenApiDynamicPayload(payload: session.merchantInfo)
	}

	func customerInfo() -> DynamicPayload? {
		guard let info = session.customerInfo else {
			return nil
		}

		return OpenApiDynamicPayload(payload: info)
	}
}
