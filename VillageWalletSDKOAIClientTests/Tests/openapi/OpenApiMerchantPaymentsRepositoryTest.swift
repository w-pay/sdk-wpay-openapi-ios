import UIKit
import Hamcrest
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

class OpenApiMerchantPaymentsRepositoryTest: VillageApiRepositoryTest {
	private let apiFactory = OpenApiSdkFactory()
	private var api: VillageMerchantApiRepository {
		apiFactory.createMerchantApi()
	}

	func testShouldRetrievePaymentList() {
		let type = "ALL"
		let pageSize = 50
		let page = 2

		let promise = apiResultExpectation()
		var value: MerchantPaymentSummaries!

		api.payments.listPayments(
			type: type,
			page: page,
			pageSize: pageSize,
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, isMerchantPaymentSummaries())
	}

	func testShouldCreateNewPaymentRequest() {
		let request = aNewPaymentRequest()

		let promise = apiResultExpectation()
		var value: CreatePaymentRequestResult!

		api.payments.createPaymentRequest(
			paymentRequest: request,
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, hasPaymentRequestCreated())
	}

	func testShouldRetrievePaymentRequestDetails() {
		let paymentRequestId = "a5bbfe1a-c1b9-11ea-924f-33c96a9759eb"

		let promise = apiResultExpectation()
		var value: MerchantPaymentDetails!

		api.payments.getPaymentRequestDetailsBy(
			paymentRequestId: paymentRequestId,
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, isMerchantPaymentDetails())
	}

	func testShouldDeletePaymentRequest() {
		let paymentRequestId = "a5bbfe1a-c1b9-11ea-924f-33c96a9759eb"

		let promise = apiResultExpectation()

		api.payments.deletePaymentRequest(
			paymentRequestId: paymentRequestId,
			completion: isSuccessful(promise: promise)
		)

		wait(for: [promise], timeout: 2)
	}

	func testShouldRefundTransaction() {
		let transactionId = "a5bbfe1a-c1b9-11ea-924f-33c96a9759eb"

		let promise = apiResultExpectation()
		var value: MerchantTransactionSummary!

		api.payments.refundTransaction(
			transactionId: transactionId,
			refundDetails: aNewTransactionRefund(),
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, isMerchantTransactionSummary())
	}
}
