import UIKit
import VillageWalletSDK

class OpenApiPaymentInstrumentAdditionResult: PaymentInstrumentAdditionResult {
	private let result: OAIInitiatePaymentInstrumentAdditionResultsData

	init(result: OAIInitiatePaymentInstrumentAdditionResultsData) {
		self.result = result
	}

	var cardCaptureURL: String {
		result.cardCaptureURL
	}

	var transactionRef: String? {
		result.transactionRef
	}
}
