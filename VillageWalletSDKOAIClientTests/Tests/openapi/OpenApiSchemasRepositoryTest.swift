import UIKit
import Hamcrest
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

class OpenApiSchemasRepositoryTest: VillageApiRepositoryTest {
	private let apiFactory = OpenApiSdkFactory()
	private var api: VillageMerchantApiRepository {
		apiFactory.createMerchantApi()
	}

	func testShouldRetrieveSchemas() {
		let promise = apiResultExpectation()
		var value: MerchantSchemaSummaries!

		api.schemas.list(
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

		api.schemas.getById(
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

		api.schemas.create(
			schema: aNewSchema(),
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, isMerchantSchemaSummary())
	}
}
