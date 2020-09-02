import UIKit
import VillageWalletSDK

class OpenApiCreatePaymentRequestResult: CreatePaymentRequestResult {
	private let result: OAICreatePaymentRequestResultsData

	init(result: OAICreatePaymentRequestResultsData) {
		self.result = result
	}

	var paymentRequestId: String {
		result.paymentRequestId
	}

	var qr: QRCode? {
		guard let qr = result.qr else {
			return nil
		}

		return OpenApiQRCode(code: qr)
	}
}
