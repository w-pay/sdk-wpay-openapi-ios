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

	var instruments: [CustomerTransactionUsedPaymentInstrument] {
		summary.instruments.map { it in OpenApiUsedPaymentInstrument(instrument: it as! OAICustomerTransactionSummaryAllOfInstruments) }
	}

	var transactionId: String {
		summary.transactionId
	}

	var type: TransactionSummaryPaymentType? {
		TransactionSummaryPaymentType.valueOf(value: summary.type)
	}

	var executionTime: Date {
		summary.executionTime
	}

	var status: TransactionSummaryPaymentStatus? {
		TransactionSummaryPaymentStatus.valueOf(value: summary.status)
	}

	var statusDetail: AnyObject? {
		nil
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

	var instruments: [CustomerTransactionUsedPaymentInstrument] {
		details.instruments.map { it in OpenApiUsedPaymentInstrument(instrument: it as! OAICustomerTransactionSummaryAllOfInstruments) }
	}

	var transactionId: String {
		details.transactionId
	}

	var type: TransactionSummaryPaymentType? {
		TransactionSummaryPaymentType.valueOf(value: details.type)
	}

	var executionTime: Date {
		details.executionTime
	}

	var status: TransactionSummaryPaymentStatus? {
		TransactionSummaryPaymentStatus.valueOf(value: details.status)
	}

	var statusDetail: AnyObject? {
		nil
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
