import UIKit
import VillageWalletSDK

class OpenApiUsedPaymentInstrument: TransactionSummaryUsedPaymentInstrument {
	private let instrument: OAICustomerTransactionSummaryAllOfInstruments

	init(instrument: OAICustomerTransactionSummaryAllOfInstruments) {
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
