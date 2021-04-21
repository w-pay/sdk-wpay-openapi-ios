import UIKit
import Hamcrest
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

class OpenApiCustomerPreferencesRepositoryTest: VillageApiRepositoryTest {
	private let apiFactory = OpenApiSdkFactory()
	private var api: VillageCustomerApiRepository {
		apiFactory.createCustomerApi()
	}

	func testShouldRetrievePreferences() {
		let promise = apiResultExpectation()
		var value: CustomerPreferences!

		api.preferences.get(
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, not(nilValue()))
	}

	func testShouldSetPreferences() {
		let promise = apiResultExpectation()

		api.preferences.set(
			preferences: TestCustomerPreferences(),
			completion: isSuccessful(promise: promise)
		)

		wait(for: [promise], timeout: 2)
	}
}
