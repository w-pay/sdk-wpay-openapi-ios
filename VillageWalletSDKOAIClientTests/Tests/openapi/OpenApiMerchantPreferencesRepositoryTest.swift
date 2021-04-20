import UIKit
import Hamcrest
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

class OpenApiMerchantPreferencesRepositoryTest: VillageApiRepositoryTest {
	private let apiFactory = OpenApiSdkFactory()
	private var api: VillageMerchantApiRepository {
		apiFactory.createMerchantApi()
	}

	func testShouldRetrievePreferences() {
		let promise = apiResultExpectation()
		var value: MerchantPreferences!

		api.preferences.get(
			completion: isSuccessfulWith { result in
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

		api.preferences.set(
			preferences: [
				"preferenceGroup": [
					"preference": "value"
				]
			],
			completion: isSuccessful(promise: promise)
		)

		wait(for: [promise], timeout: 2)
	}
}
