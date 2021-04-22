import UIKit
import Hamcrest
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

class OpenApiCustomerPaymentRequestsRepositoryTest: VillageApiRepositoryTest {
	private let apiFactory = OpenApiSdkFactory()
	private var api: VillageCustomerApiRepository {
		apiFactory.createCustomerApi()
	}

	func testShouldRetrievePaymentRequestDetailsByQRCode() {
		let qrCodeId = "75ba5b0b-7e5d-47fe-9508-29ca69fdb1d5"

		let promise = apiResultExpectation()
		var value: CustomerPaymentRequest!

		api.paymentRequests.getBy(
			qrCodeId: qrCodeId,
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, isCustomerPaymentRequest())
	}

	func testShouldRetrievePaymentRequestDetailsByRequestId() {
		let paymentRequestId = "75ba5b0b-7e5d-47fe-9508-29ca69fdb1d5"

		let promise = apiResultExpectation()
		var value: CustomerPaymentRequest!

		api.paymentRequests.getBy(
			paymentRequestId: paymentRequestId,

			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, isCustomerPaymentRequest())
	}

	func testShouldMakePayment() {
		let paymentRequestId = "75ba5b0b-7e5d-47fe-9508-29ca69fdb1d5"

		let promise = apiResultExpectation()
		var value: CustomerTransactionSummary!

		api.paymentRequests.makePayment(
			paymentRequestId: paymentRequestId,
			primaryInstrument: "abc123",
			secondaryInstruments: nil,
			clientReference: nil,
			preferences: TestPaymentPreferences(),
			challengeResponses: nil,
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, isCustomerTransactionSummary())
	}
}
