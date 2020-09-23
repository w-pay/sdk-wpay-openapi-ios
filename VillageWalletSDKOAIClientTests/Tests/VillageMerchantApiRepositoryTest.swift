import XCTest
import Hamcrest
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

class VillageMerchantApiRepositoryTest: VillageApiRepositoryTest {
	private let apiFactory = OpenApiSdkFactory()
	private var api: VillageMerchantApiRepository! {
		let api = apiFactory.createMerchantApi()
		api.setHost(host: "http://localhost:8080")

		return api
	}

	func testShouldRetrieveTransactions() {
		let startTime = Date.parseISO("2017-11-06T19:38:09.890+11:00")!
		let endTime = Date.parseISO("2017-11-06T19:38:09.890+11:00")!
		let pageSize = 20
		let page = 2

		let promise = apiResultExpectation()
		var value: MerchantTransactionSummaries!

		api.retrieveTransactions(
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

		api.retrieveTransactionDetails(
			transactionId: transactionId,
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, isMerchantTransactionDetails())
	}

	func testShouldCreatePaymentRequestQRCode() {
		let promise = apiResultExpectation()
		var value: QRCode!

		api.createPaymentRequestQRCode(
			details: aNewPaymentRequestQRCode(),
			completion: isSuccessfulWith{ result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, isAQrCode())
	}

	func testShouldRetrievePaymentRequestQRCodeContent() {
		let qrCodeId = "a5bbfe1a-c1b9-11ea-924f-33c96a9759eb"

		let promise = apiResultExpectation()
		var value: QRCode!

		api.retrievePaymentRequestQRCode(
			qrCodeId: qrCodeId,
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, isAQrCode())
	}

	func testShouldCancelPaymentQRCode() {
		let qrCodeId = "a5bbfe1a-c1b9-11ea-924f-33c96a9759eb"

		let promise = apiResultExpectation()

		api.cancelPaymentQRCode(
			qrCodeId: qrCodeId,
			completion: isSuccessful(promise: promise)
		)

		wait(for: [promise], timeout: 2)
	}

	func testShouldRetrievePaymentList() {
		let type = "ALL"
		let pageSize = 50
		let page = 2

		let promise = apiResultExpectation()
		var value: MerchantPaymentSummaries!

		api.retrievePaymentList(
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

		api.createNewPaymentRequest(
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

		api.retrievePaymentRequestDetails(
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

		api.deletePaymentRequest(
			paymentRequestId: paymentRequestId,
			completion: isSuccessful(promise: promise)
		)

		wait(for: [promise], timeout: 2)
	}

	func testShouldRefundTransaction() {
		let transactionId = "a5bbfe1a-c1b9-11ea-924f-33c96a9759eb"

		let promise = apiResultExpectation()
		var value: MerchantTransactionSummary!

		api.refundTransaction(
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

	func testShouldRetrievePreferences() {
		let promise = apiResultExpectation()
		var value: MerchantPreferences!

		api.retrievePreferences(completion: isSuccessfulWith { result in
			value = try! result.get()

			promise.fulfill()
		})

		wait(for: [promise], timeout: 2)

		assertThat(value, hasEntry(
			equalTo("qrTemplates"), allOf(
			  hasEntry(equalTo("PAYMENT_REQUEST"), not(blankOrNilString())),
				hasEntry(equalTo("PAYMENT_SESSION"), not(blankOrNilString()))
		  ))
		)
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

	func testShouldRetrieveSchemas() {
		let promise = apiResultExpectation()
		var value: MerchantSchemaSummaries!

		api.retrieveSchemas(
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, isMerchantSchemaSummaries())
	}

	func testShouldRetrieveSchemaDetails() {
		let schemaId = "a5bbfe1a-c1b9-11ea-924f-33c96a9759eb"

		let promise = apiResultExpectation()
		var value: MerchantSchema!

		api.retrieveSchemaDetails(
			schemaId: schemaId,
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, isMerchantSchema())
	}

	func testShouldCreateSchema() {
		let promise = apiResultExpectation()
		var value: MerchantSchemaSummary!

		api.createSchema(
			schema: aNewSchema(),
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, isMerchantSchemaSummary())
	}

	func testShouldCreatePaymentSession() {
		let promise = apiResultExpectation()
		var value: CreatePaymentSessionResult!

		api.createPaymentSession(
			request: TestCreatePaymentSessionRequest(),
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, hasPaymentSessionCreated())
	}

	func testShouldRetrievePaymentSession() {
		let paymentSessionId = "a5bbfe1a-c1b9-11ea-924f-33c96a9759eb"

		let promise = apiResultExpectation()
		var value: PaymentSession!

		api.retrievePaymentSession(
			paymentSessionId: paymentSessionId,
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, hasPaymentSession())
	}

	func testShouldUpdatePaymentSession() {
		let paymentSessionId = "a5bbfe1a-c1b9-11ea-924f-33c96a9759eb"

		let promise = apiResultExpectation()

		api.updatePaymentSession(
			paymentSessionId: paymentSessionId,
			session: TestMerchantUpdatePaymentSessionRequest(),
			completion: isSuccessful(promise: promise)
		)

		wait(for: [promise], timeout: 2)
	}

	func testShouldDeletePaymentSession() {
		let paymentSessionId = "a5bbfe1a-c1b9-11ea-924f-33c96a9759eb"

		let promise = apiResultExpectation()

		api.deletePaymentSession(
			paymentSessionId: paymentSessionId,
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
