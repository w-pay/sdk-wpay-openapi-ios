import XCTest
import Hamcrest
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

class VillageCustomerApiRepositoryTest: VillageApiRepositoryTest {
	private let apiFactory = OpenApiSdkFactory()
	private var api: VillageCustomerApiRepository! {
		let api = apiFactory.createCustomerApi()
		api.setHost(host: "http://localhost:8080")

		return api
	}

	func testShouldRetrieveTransactions() {
		let paymentRequestId = "75ba5b0b-7e5d-47fe-9508-29ca69fdb1d5"
		let startTime = Date.parseISO("2017-11-06T19:38:09.890+11:00")!
		let endTime = Date.parseISO("2017-11-06T19:38:09.890+11:00")!
		let pageSize = 20
		let page = 2

		let promise = apiResultExpectation()
		var value: CustomerTransactionSummaries!

		api.retrieveTransactions(
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

		api.retrieveTransactionDetails(
			transactionId: transactionId,
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, isCustomerTransactionDetails())
	}

	func testShouldRetrievePaymentRequestDetailsByQRCode() {
		let qrCodeId = "75ba5b0b-7e5d-47fe-9508-29ca69fdb1d5"

		let promise = apiResultExpectation()
		var value: CustomerPaymentRequest!

		api.retrievePaymentRequestDetailsBy(
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

		api.retrievePaymentRequestDetailsBy(
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

		api.makePayment(
			paymentRequestId: paymentRequestId,
			primaryInstrument: aSelectedPaymentInstrument(),
			secondaryInstruments: nil,
			clientReference: nil,
			challengeResponses: nil,
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, isCustomerTransactionSummary())
	}

	func testShouldRetrievePaymentInstruments() {
		let promise = apiResultExpectation()
		var value: AllPaymentInstruments!

		api.retrievePaymentInstruments(
			wallet: Wallet.MERCHANT,
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, isAllPaymentInstruments())
	}

	func testShouldDeletePaymentInstrument() {
		let promise = apiResultExpectation()

		api.deletePaymentInstrument(
			instrument: aSelectedPaymentInstrument(),
			completion: isSuccessful(promise: promise)
		)

		wait(for: [promise], timeout: 2)
	}

	func testShouldInitiatePaymentInstrumentAddition() {
		let instrument = aNewPaymentInstrument()

		let promise = apiResultExpectation()
		var value: PaymentInstrumentAdditionResult!

		api.initiatePaymentInstrumentAddition(
			instrument: instrument,
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, hasPaymentInstrumentAdded())
	}

	func testShouldRetrievePreferences() {
		let promise = apiResultExpectation()
		var value: CustomerPreferences!

		api.retrievePreferences(
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, hasEntry(equalTo("payments"),
			hasEntry(equalTo("defaultInstrument"), not(blankOrNilString()))
		))
	}

	func testShouldSetPreferences() {
		let promise = apiResultExpectation()

		api.setPreferences(
			preferences: [
				"preferenceGroup": [
					"preference": "value"
				]
			],
			completion: isSuccessful(promise: promise)
		)

		wait(for: [promise], timeout: 2)
	}

	func testShouldRetrieveCustomerPaymentSession() {
		let paymentSessionId = "75ba5b0b-7e5d-47fe-9508-29ca69fdb1d5"

		let promise = apiResultExpectation()
		var value: PaymentSession!

		api.retrievePaymentSessionBy(
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

		api.retrievePaymentSessionBy(
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

		api.updatePaymentSession(
			paymentSessionId: paymentSessionId,
			session: TestCustomerUpdatePaymentSessionRequest(),
			completion: isSuccessful(promise: promise)
		)

		wait(for: [promise], timeout: 2)
	}

	func testShouldDeletePaymentSession() {
		let paymentSessionId = "75ba5b0b-7e5d-47fe-9508-29ca69fdb1d5"

		let promise = apiResultExpectation()

		api.deletePaymentSession(
			paymentSessionId: paymentSessionId,
			completion: isSuccessful(promise: promise)
		)

		wait(for: [promise], timeout: 2)
	}

	func testShouldPreApprovePaymentSession() {
		let paymentSessionId = "75ba5b0b-7e5d-47fe-9508-29ca69fdb1d5"

		let promise = apiResultExpectation()

		api.preApprovePaymentSession(
			paymentSessionId: paymentSessionId,
			primaryInstrument: aSelectedPaymentInstrument(),
			secondaryInstruments: nil,
			clientReference: nil,
			challengeResponses: nil,
			completion: isSuccessful(promise: promise)
		)

		wait(for: [promise], timeout: 2)
	}

	func testShouldCheckHealth() {
		let promise = apiResultExpectation()
		var value: HealthCheck!

		api.checkHealth(completion: isSuccessfulWith { result in
			value = try! result.get()

			promise.fulfill()
		})

		wait(for: [promise], timeout: 2)

		assertThat(value, isHealthyService())
	}
}
