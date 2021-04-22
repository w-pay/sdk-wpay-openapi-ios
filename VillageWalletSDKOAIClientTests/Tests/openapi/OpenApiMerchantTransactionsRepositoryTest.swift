import UIKit
import Hamcrest
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

class OpenApiMerchantTransactionsRepositoryTest: VillageApiRepositoryTest {
	private let apiFactory = OpenApiSdkFactory()
	private var api: VillageMerchantApiRepository {
		apiFactory.createMerchantApi()
	}

	func testShouldRetrieveTransactions() {
		let startTime = Date.parseISO("2017-11-06T19:38:09.890+11:00")!
		let endTime = Date.parseISO("2017-11-06T19:38:09.890+11:00")!
		let pageSize = 20
		let page = 2

		let promise = apiResultExpectation()
		var value: MerchantTransactionSummaries!

		api.transactions.list(
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

		assertThat(value, isMerchantTransactionSummaries())
	}

	func testShouldRetrieveTransactionDetails() {
		let transactionId = "a5bbfe1a-c1b9-11ea-924f-33c96a9759eb"

		let promise = apiResultExpectation()
		var value: MerchantTransactionDetails!

		api.transactions.getBy(
			transactionId: transactionId,
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, isMerchantTransactionDetails())
	}
}
