import UIKit
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

class OpenApiSdkFactory: SdkFactory {
	func createCustomerApi() -> VillageCustomerApiRepository {
		OpenApiVillageCustomerApiRepository(
			requestHeadersFactory: TestRequestHeadersFactory(),
			options: VillageCustomerOptions(
				apiKey: "abc123",
				baseUrl: "http://localhost:8080/wow/v1/pay"
			),
			authenticator: AnyApiAuthenticator<HasAccessToken>()
		)
	}

	func createMerchantApi() -> VillageMerchantApiRepository {
		OpenApiVillageMerchantApiRepository(
			requestHeadersFactory: TestRequestHeadersFactory(),
			options: VillageMerchantOptions(
				apiKey: "abc123",
				baseUrl: "http://localhost:8080/wow/v1/pay"
			),
			authenticator: AnyApiAuthenticator<HasAccessToken>()
		)
	}
}

class TestRequestHeadersFactory: RequestHeadersFactory {
	func createHeaders() -> [String: String] {
		[
			X_WALLET_ID: "a value",
			X_MERCHANT_ID: "a value",
			X_API_KEY: "abc123",
			X_EVERYDAY_PAY_WALLET: "true",
			AUTHORISATION: "def456"
		]
	}
}