import UIKit
import VillageWalletSDK

class OpenApiUsedPaymentInstrument: CustomerTransactionUsedPaymentInstrument {
	private let instrument: OAICustomerTransactionSummaryAllOfInstruments

	init(instrument: OAICustomerTransactionSummaryAllOfInstruments) {
		self.instrument = instrument
	}

	var paymentInstrumentId: String {
		instrument.paymentInstrumentId
	}

	var amount: Decimal {
		instrument.amount.decimalValue
	}

	var paymentTransactionRef: String? {
		instrument.paymentTransactionRef
	}
}
