import UIKit
import VillageWalletSDK

class OpenApiUsedPaymentInstrument: CustomerTransactionUsedPaymentInstrument {
	private let instrument: OAICustomerTransactionSummaryAllOfInstruments

	init(instrument: OAICustomerTransactionSummaryAllOfInstruments) {
		self.instrument = instrument
	}

	func paymentInstrumentId() -> String {
		instrument.paymentInstrumentId
	}

	func amount() -> Decimal {
		instrument.amount.decimalValue
	}

	func paymentTransactionRef() -> String? {
		instrument.paymentTransactionRef
	}
}
