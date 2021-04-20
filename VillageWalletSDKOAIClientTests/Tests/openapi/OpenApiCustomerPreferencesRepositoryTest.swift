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

		// FIXME:
		/*assertThat(value, hasEntry(equalTo("payments"),
			hasEntry(equalTo("defaultInstrument"), not(blankOrNilString()))
		))*/
	}

	func testShouldSetPreferences() {
		let promise = apiResultExpectation()

		// FIXME:
		/*api.preferences.set(
			preferences: [
				"preferenceGroup": [
					"preference": "value"
				]
			],
			completion: isSuccessful(promise: promise)
		)*/

		wait(for: [promise], timeout: 2)
	}
}
