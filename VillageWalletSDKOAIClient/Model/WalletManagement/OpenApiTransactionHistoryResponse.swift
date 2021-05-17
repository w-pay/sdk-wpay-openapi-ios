import UIKit
import VillageWalletSDK

class OpenApiTransactionHistoryResponse: TransactionHistoryResponse {
	private let response: OAITransactionHistoryResponse

	init(response: OAITransactionHistoryResponse) {
		self.response = response
	}

	var returned: Decimal {
		response.returned.decimalValue
	}

	var total: Decimal {
		response.total.decimalValue
	}

	var transactions: [Transaction] {
		response.transactions.map { it in
			OpenApiTransaction(transaction: it as! OAITransactionHistoryResponseTransactions)
		}
	}
}

class OpenApiTransaction: Transaction {
	private let transaction: OAITransactionHistoryResponseTransactions

	init(transaction: OAITransactionHistoryResponseTransactions) {
		self.transaction = transaction
	}

	var transactionType: ContainerTransactionType {
		ContainerTransactionType(rawValue: transaction.transactionType.uppercased())!
	}

	var transactionRef: String {
		transaction.transactionRef
	}

	var transactionTimestamp: String {
		transaction.transactionTimestamp
	}

	var applicationRef: String {
		transaction.applicationRef
	}

	var applicationName: String {
		transaction.applicationName
	}

	var clientReference: String {
		transaction.clientReference
	}

	var orderNumber: String {
		transaction.orderNumber
	}

	var bin: String {
		transaction.bin
	}

	var network: String {
		transaction.network
	}

	var cardSuffix: String {
		transaction.cardSuffix
	}

	var amount: Decimal {
		transaction.amount.decimalValue
	}

	var comment: String {
		transaction.comment
	}

	var paymentInstrumentType: String {
		transaction.paymentInstrumentType
	}
}