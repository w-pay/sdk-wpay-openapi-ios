import UIKit
import VillageWalletSDK

class OpenApiMerchantTransactionSummaries: MerchantTransactionSummaries {
	private let theTransactions: [OAIMerchantTransactionSummary]

	init(transactions: [OAIMerchantTransactionSummary]) {
		theTransactions = transactions
	}

	var transactions: [MerchantTransactionSummary] {
		theTransactions.map(OpenApiMerchantTransactionSummary.init)
	}
}

class OpenApiMerchantTransactionSummary: MerchantTransactionSummary {
	private let summary: OAIMerchantTransactionSummary

	init(summary: OAIMerchantTransactionSummary) {
		self.summary = summary
	}

	var walletId: String {
		summary.walletId
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

	var instruments: [TransactionSummaryUsedPaymentInstrument] {
		summary.instruments.map { it in OpenApiUsedPaymentInstrument(instrument: it as! OAIInstrumentAllocation) }
	}
}

class OpenApiMerchantTransactionDetails: MerchantTransactionDetails {
	private let details: OAIMerchantTransactionDetail

	init(details: OAIMerchantTransactionDetail) {
		self.details = details
	}

	var basket: Basket? {
		guard let basket = details.basket else {
			return nil
		}

		return OpenApiBasket(basket: basket)
	}

	var posPayload: PosPayload? {
		guard let payload = details.posPayload else {
			return nil
		}

		return OpenApiPosPayload(thePayload: payload)
	}

	var merchantPayload: MerchantPayload? {
		guard let payload = details.merchantPayload else {
			return nil
		}

		return OpenApiMerchantPayload(aPayload: payload)
	}

	var walletId: String {
		details.walletId
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

	var instruments: [TransactionSummaryUsedPaymentInstrument] {
		details.instruments.map { it in OpenApiUsedPaymentInstrument(instrument: it as! OAIInstrumentAllocation) }
	}
}
