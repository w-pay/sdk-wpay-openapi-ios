import UIKit
import VillageWalletSDK

class OpenApiCustomerTransactionSummaries: CustomerTransactionSummaries {
	private let theTransactions: [OAICustomerTransactionSummary]

	init(transactions: [OAICustomerTransactionSummary]) {
		self.theTransactions = transactions
	}

	var transactions: [CustomerTransactionSummary] {
		theTransactions.map { it in OpenApiCustomerTransactionSummary(summary: it) }
	}
}

class OpenApiCustomerTransactionSummary: CustomerTransactionSummary {
	private let summary: OAICustomerTransactionSummary

	init(summary: OAICustomerTransactionSummary) {
		self.summary = summary
	}

	var merchantId: String {
		summary.merchantId
	}

	var instruments: [TransactionSummaryUsedPaymentInstrument] {
		summary.instruments.map { it in OpenApiUsedPaymentInstrument(instrument: it as! OAIInstrumentAllocation) }
	}

	var transactionId: String {
		summary.transactionId
	}

	var type: TransactionSummaryPaymentType? {
		TransactionSummaryPaymentType(rawValue: summary.type.uppercased())
	}

	var executionTime: Date {
		summary.executionTime
	}

	var status: TransactionSummaryPaymentStatus? {
		TransactionSummaryPaymentStatus(rawValue: summary.status.uppercased())
	}

	var rollback: TransactionSummarySummaryRollback? {
		guard let rollback = summary.rollback else {
			return nil
		}

		return TransactionSummarySummaryRollback(rawValue: rollback.uppercased())
	}

	var subTransactions: [Any]? {
		summary.subTransactions
	}

	var refundReason: String? {
		summary.refundReason
	}

	var paymentRequestId: String {
		summary.paymentRequestId
	}

	var merchantReferenceId: String {
		summary.merchantReferenceId
	}

	var grossAmount: Decimal {
		summary.grossAmount.decimalValue
	}

	var clientReference: String? {
		summary.clientReference
	}
}

class OpenApiCustomerTransactionDetails: CustomerTransactionDetails {
	private let details: OAICustomerTransactionDetail

	init(details: OAICustomerTransactionDetail) {
		self.details = details
	}

	var basket: Basket? {
		guard let basket = details.basket else {
			return nil
		}

		return OpenApiBasket(basket: basket)
	}

	var merchantId: String {
		details.merchantId
	}

	var instruments: [TransactionSummaryUsedPaymentInstrument] {
		details.instruments.map { it in OpenApiUsedPaymentInstrument(instrument: it as! OAIInstrumentAllocation) }
	}

	var transactionId: String {
		details.transactionId
	}

	var type: TransactionSummaryPaymentType? {
		TransactionSummaryPaymentType(rawValue: details.type.uppercased())
	}

	var executionTime: Date {
		details.executionTime
	}

	var status: TransactionSummaryPaymentStatus? {
		TransactionSummaryPaymentStatus(rawValue: details.status.uppercased())
	}

	var rollback: TransactionSummarySummaryRollback? {
		guard let rollback = details.rollback else {
			return nil
		}

		return TransactionSummarySummaryRollback(rawValue: rollback.uppercased())
	}

	var subTransactions: [Any]? {
		details.subTransactions
	}

	var refundReason: String? {
		details.refundReason
	}

	var paymentRequestId: String {
		details.paymentRequestId
	}

	var merchantReferenceId: String {
		details.merchantReferenceId
	}

	var grossAmount: Decimal {
		details.grossAmount.decimalValue
	}

	var clientReference: String? {
		details.clientReference
	}
}
