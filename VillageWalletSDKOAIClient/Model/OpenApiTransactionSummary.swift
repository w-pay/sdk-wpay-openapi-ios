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
		instrument.instrumentType
	}

	var transactions: [UsedPaymentInstrumentTransaction] {
		instrument.transactions.map {
			it in OpenApiUsedPaymentInstrumentTransaction(transaction: it as! OAIInstrumentAllocationTransactions)
		}
	}
}

class OpenApiUsedPaymentInstrumentTransaction: UsedPaymentInstrumentTransaction {
	private let transaction: OAIInstrumentAllocationTransactions

	init(transaction: OAIInstrumentAllocationTransactions) {
		self.transaction = transaction
	}

	var type: TransactionSummaryPaymentType? {
		guard let type = transaction.type else {
			return nil
		}

		return TransactionSummaryPaymentType(rawValue: type.uppercased())
	}

	var executionTime: Date? {
		transaction.executionTime
	}

	var paymentTransactionRef: String? {
		transaction.paymentTransactionRef
	}

	var refundTransactionRef: String? {
		transaction.refundTransactionRef
	}

	var status: TransactionSummaryPaymentStatus? {
		guard let status = transaction.status else {
			return nil
		}

		return TransactionSummaryPaymentStatus(rawValue: status.uppercased())
	}

	var amount: Decimal? {
		transaction.amount.decimalValue
	}
}
