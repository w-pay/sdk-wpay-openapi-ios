import Foundation
import XCTest
import Hamcrest
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

func isCustomerTransactionSummaries() -> Matcher<CustomerTransactionSummaries> {
	Matcher("A list of customer transaction summaries") { (value) -> Bool in
		let transactionMatcher = isCustomerTransactionSummary()
		let transactions = value.transactions

		assertThat(transactions.count, greaterThan(0))

		return transactions.reduce(true) {
			(result, transaction) -> Bool in result && transactionMatcher.matches(transaction).boolValue
		}
	}
}

func isCustomerTransactionSummary() -> Matcher<CustomerTransactionSummary> {
	Matcher("A Customer Transaction Summary") { (item) -> Bool in
		assertThat(item.merchantId, not(blankOrNilString()))
		assertThat(item.merchantReferenceId, not(blankOrNilString()))
		assertThat(item.paymentRequestId, not(blankOrNilString()))
		assertThat(item.type, not(nilValue()))
		assertThat(item.grossAmount, not(nilValue()))
		assertThat(item.executionTime, not(nilValue()))
		assertThat(item.status, not(nilValue()))
		assertThat(item.instruments.count, greaterThanOrEqualTo(1))
		assertThat(item.instruments, hasItems(withCustomerPaymentInstruments()))
		assertThat(item.transactionId, not(blankOrNilString()))
		assertThat(item.clientReference, blankOrNilString())

		return true
	}
}

func isCustomerTransactionDetails() -> Matcher<CustomerTransactionDetails> {
	let summaryMatcher: Matcher<CustomerTransactionSummary> = isCustomerTransactionSummary()

	return Matcher("Details on a customer transaction") { (item) -> Bool in 
		assertThat(item.basket!, isBasket())

		return summaryMatcher.matches(item).boolValue
	}
}

func withCustomerPaymentInstruments() -> Matcher<TransactionSummaryUsedPaymentInstrument> {
	Matcher("Customer Transaction Summary with instruments") { (item) -> Bool in
		assertThat(item.paymentInstrumentId, not(blankOrNilString()))
		assertThat(item.instrumentType, not(nilValue()))

		// TODO:
		//  assertThat(item.transactions, not(nilValue()))

		return true
	}
}