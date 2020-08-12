import UIKit
import VillageWalletSDK

public class OpenApiClientFactory: Configurable {
	private let requestHeadersFactory: RequestHeadersFactory
	private var contextRoot: String

	private var host: String = "localhost:3000"

	init(requestHeadersFactory: RequestHeadersFactory, contextRoot: String) {
		self.requestHeadersFactory = requestHeadersFactory
		self.contextRoot = contextRoot
	}

	public func setHost(host: String) {
		self.host = host
	}

	internal func createAdministrationApi() -> OAIAdministrationApi {
		OAIAdministrationApi(apiClient: createApiClient())
	}

	internal func createCustomerApi() -> OAICustomerApi {
		OAICustomerApi(apiClient: createApiClient())
	}

	internal func createMerchantApi() -> OAIMerchantApi {
		OAIMerchantApi(apiClient: createApiClient())
	}

	internal func getDefaultHeader(client: OAIApiClient, name: String) -> String? {
		getDefaultHeader(config: client.configuration, name: name)
	}

	internal func authorisationHeader(name: String, value: String) -> String? {
		if (name == "Authorization") {
			let token = value.split(separator: " ")[1]

			return String(token)
		}

		return nil
	}

	internal func extractHttpResponse(error: NSError) -> HTTPURLResponse {
		let info = (error as NSError).userInfo
		let data = info["com.alamofire.serialization.response.error.response"] as? HTTPURLResponse

		guard data != nil else {
			fatalError("No HTTP response data in error")
		}

		return data!
	}

	internal func toDynamicPayload(payload: DynamicPayload) -> OAIDynamicPayload {
		let dto = OAIDynamicPayload()

		dto.schemaId = payload.schemaId()
		dto.payload = (payload.payload() as! [String: NSObject])

		return dto
	}

	private func getDefaultHeader(config: OAIConfiguration, name: String) -> String? {
		(config.defaultHeaders as! [String: String])[name]
	}

	private func createApiClient() -> OAIApiClient {
		let config = OAIDefaultConfiguration()

		requestHeadersFactory.createHeaders().forEach { name, value in
			config.setDefaultHeaderValue(value, forKey: name)
		}

		/*
		 * Because the OAIClient overwrites headers with the config values initialise
		 * config with the correct header values.
		 */
		config.accessToken = accessToken(header: getDefaultHeader(config: config, name: "Authorization"))
		config.setApiKey(getDefaultHeader(config: config, name: X_API_KEY), forApiKeyIdentifier: X_API_KEY)

		let apiClient = OAIApiClient(
			baseURL: URL(string: "\(host)\(contextRoot)"),
			configuration: config
		)

		return apiClient!
	}

	private func accessToken(header: String?) -> String? {
		guard let value = header else {
			return nil
		}

		let token = value.split(separator: " ")[1]

		return String(token)
	}
}
