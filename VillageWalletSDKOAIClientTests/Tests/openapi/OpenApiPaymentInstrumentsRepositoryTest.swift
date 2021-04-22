import UIKit
import Hamcrest
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

class OpenApiPaymentInstrumentsRepositoryTest: VillageApiRepositoryTest {
	private let apiFactory = OpenApiSdkFactory()
	private var api: VillageCustomerApiRepository {
		apiFactory.createCustomerApi()
	}

	func testShouldRetrievePaymentInstruments() {
		let promise = apiResultExpectation()
		var value: WalletContents!

		api.instruments.list(
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

		api.instruments.delete(
			instrument: "abc123",
			completion: isSuccessful(promise: promise)
		)

		wait(for: [promise], timeout: 2)
	}

	func testShouldInitiatePaymentInstrumentAddition() {
		let instrument = aNewPaymentInstrument()

		let promise = apiResultExpectation()
		var value: PaymentInstrumentAdditionResult!

		api.instruments.initiateAddition(
			instrument: instrument,
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, hasPaymentInstrumentAdded())
	}
}
