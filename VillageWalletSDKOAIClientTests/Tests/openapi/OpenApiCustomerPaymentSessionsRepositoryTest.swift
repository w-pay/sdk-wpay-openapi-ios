import UIKit
import Hamcrest
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

class OpenApiCustomerPaymentSessionsRepositoryTest: VillageApiRepositoryTest {
	private let apiFactory = OpenApiSdkFactory()
	private var api: VillageCustomerApiRepository {
		apiFactory.createCustomerApi()
	}

	func testShouldRetrieveCustomerPaymentSession() {
		let paymentSessionId = "75ba5b0b-7e5d-47fe-9508-29ca69fdb1d5"

		let promise = apiResultExpectation()
		var value: PaymentSession!

		api.paymentSessions.getBy(
			paymentSessionId: paymentSessionId,
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, hasPaymentSession())
	}

	func testShouldRetrieveCustomerPaymentSessionByQR() {
		let qrCodeId = "75ba5b0b-7e5d-47fe-9508-29ca69fdb1d5"

		let promise = apiResultExpectation()
		var value: PaymentSession!

		api.paymentSessions.getBy(
			qrCodeId: qrCodeId,
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, hasPaymentSession())
	}

	func testShouldUpdateCustomerPaymentSession() {
		let paymentSessionId = "75ba5b0b-7e5d-47fe-9508-29ca69fdb1d5"

		let promise = apiResultExpectation()

		api.paymentSessions.update(
			paymentSessionId: paymentSessionId,
			session: TestCustomerUpdatePaymentSessionRequest(),
			completion: isSuccessful(promise: promise)
		)

		wait(for: [promise], timeout: 2)
	}

	func testShouldDeletePaymentSession() {
		let paymentSessionId = "75ba5b0b-7e5d-47fe-9508-29ca69fdb1d5"

		let promise = apiResultExpectation()

		api.paymentSessions.delete(
			paymentSessionId: paymentSessionId,
			completion: isSuccessful(promise: promise)
		)

		wait(for: [promise], timeout: 2)
	}

	func testShouldPreApprovePaymentSession() {
		let paymentSessionId = "75ba5b0b-7e5d-47fe-9508-29ca69fdb1d5"

		let promise = apiResultExpectation()

		api.paymentSessions.preApprove(
			paymentSessionId: paymentSessionId,
			primaryInstrument: "abc123",
			secondaryInstruments: nil,
			clientReference: nil,
			preferences: nil,
			challengeResponses: nil,
			completion: isSuccessful(promise: promise)
		)

		wait(for: [promise], timeout: 2)
	}
}
