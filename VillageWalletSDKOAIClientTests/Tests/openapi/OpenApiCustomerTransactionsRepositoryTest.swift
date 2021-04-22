import UIKit
import Hamcrest
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

class OpenApiCustomerTransactionsRepositoryTest: VillageApiRepositoryTest {
	private let apiFactory = OpenApiSdkFactory()
	private var api: VillageCustomerApiRepository {
		apiFactory.createCustomerApi()
	}

	func testShouldRetrieveTransactions() {
		let paymentRequestId = "75ba5b0b-7e5d-47fe-9508-29ca69fdb1d5"
		let startTime = Date.parseISO("2017-11-06T19:38:09.890+11:00")!
		let endTime = Date.parseISO("2017-11-06T19:38:09.890+11:00")!
		let pageSize = 20
		let page = 2

		let promise = apiResultExpectation()
		var value: CustomerTransactionSummaries!

		api.transactions.list(
			paymentRequestId: paymentRequestId,
			page: page,
			pageSize: pageSize,
			endTime: endTime,
			startTime: startTime,
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, isCustomerTransactionSummaries())
	}

	func testShouldRetrieveTransactionDetails() {
		let transactionId = "75ba5b0b-7e5d-47fe-9508-29ca69fdb1d5"

		let promise = apiResultExpectation()
		var value: CustomerTransactionDetails!

		api.transactions.getBy(
			transactionId: transactionId,
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, isCustomerTransactionDetails())
	}
}
