import UIKit
import Hamcrest
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

class OpenApiMerchantPaymentSessionsRepositoryTest: VillageApiRepositoryTest {
	private let apiFactory = OpenApiSdkFactory()
	private var api: VillageMerchantApiRepository {
		apiFactory.createMerchantApi()
	}

	func testShouldCreatePaymentSession() {
		let promise = apiResultExpectation()
		var value: CreatePaymentSessionResult!

		api.paymentSession.create(
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

		api.paymentSession.getBy(
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

		api.paymentSession.update(
			paymentSessionId: paymentSessionId,
			session: TestMerchantUpdatePaymentSessionRequest(),
			completion: isSuccessful(promise: promise)
		)

		wait(for: [promise], timeout: 2)
	}

	func testShouldDeletePaymentSession() {
		let paymentSessionId = "a5bbfe1a-c1b9-11ea-924f-33c96a9759eb"

		let promise = apiResultExpectation()

		api.paymentSession.delete(
			paymentSessionId: paymentSessionId,
			completion: isSuccessful(promise: promise)
		)

		wait(for: [promise], timeout: 2)
	}
}
