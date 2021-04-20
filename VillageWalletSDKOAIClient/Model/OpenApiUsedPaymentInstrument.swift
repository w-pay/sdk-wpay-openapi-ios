import UIKit
import VillageWalletSDK

class OpenApiUsedPaymentInstrument: TransactionSummaryUsedPaymentInstrument {
	private let instrument: OAIInstrumentAllocation

	init(instrument: OAIInstrumentAllocation) {
		self.instrument = instrument
	}

	var paymentInstrumentId: String {
		instrument.paymentInstrumentId
	}

	var instrumentType: String {
		// FIXME:
		""
	}

	var transactions: [UsedPaymentInstrumentTransaction] {
		// FIXME:
		[]
	}
}
