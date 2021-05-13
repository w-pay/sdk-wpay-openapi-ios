import UIKit
import VillageWalletSDK

public class OpenApiClientFactory {
	private let requestHeadersFactory: RequestHeadersFactory
	private let options: VillageOptions

	public init(requestHeadersFactory: RequestHeadersFactory, options: VillageOptions) {
		self.requestHeadersFactory = requestHeadersFactory
		self.options = options
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

	internal func createOpenpayApi() -> OAIOpenpayApi {
		OAIOpenpayApi(apiClient: createApiClient())
	}

	internal func createPaymentAgreementsApi() -> OAIPaymentAgreementsApi {
		OAIPaymentAgreementsApi(apiClient: createApiClient())
	}

	internal func createPaymentsApi() -> OAIPaymentsApi {
		OAIPaymentsApi(apiClient: createApiClient())
	}

	internal func getDefaultHeader(client: OAIApiClient, name: String) -> String? {
		getDefaultHeader(config: client.configuration, name: name)
	}

	// TODO: Try to get rid of this
	internal func getEverydayPayHeader(client: OAIApiClient) -> NSNumber? {
		let header = getDefaultHeader(client: client, name: X_EVERYDAY_PAY_WALLET) as NSString?

		return (header?.boolValue ?? false) as NSNumber
	}

	internal func authorisationHeader(name: String, value: String) -> String? {
		if (name == "Authorization") {
			let token = value.split(separator: " ")[1]

			return String(token)
		}

		return nil
	}

	internal func extractError<T>(error: NSError) -> Result<T, ApiError> {
		do {
			try extractHttpError(error: error)
			try extractJsonDecodingError(error: error)
		}
		catch {
			return .failure(error as! ApiError)
		}

		return .failure(.error(error: error))
	}

	internal func extractHttpError(error: NSError) throws -> Void {
		if (error.domain == "com.alamofire.error.serialization.response") {
			let info = (error as NSError).userInfo
			let data = info["com.alamofire.serialization.response.error.response"] as? HTTPURLResponse

			if let response = data {
				let reason: ApiError.HTTPErrorReason

				switch response.statusCode {
					case 400:
						reason = .invalidInput

					case 401:
						reason = .unauthorised

					case 422:
						reason = .processingError

					default:
						reason = .serverError
				}

				throw ApiError.httpError(reason: reason, response: response)
			}
		}
	}

	internal func extractJsonDecodingError(error: NSError) throws -> Void {
		if (error.domain == "JSONModelErrorDomain") {
			throw ApiError.jsonDecoding(
				message: error.localizedDescription,
				details: error.userInfo
			)
		}
	}

	internal func toDynamicPayload(payload: DynamicPayload) -> OAIDynamicPayload {
		let dto = OAIDynamicPayload()

		dto.schemaId = payload.schemaId
		dto.payload = (payload.payload as! [String: NSObject])

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
			baseURL: URL(string: options.baseUrl),
			configuration: config
		)

		return apiClient!
	}

	private func accessToken(header: String?) -> String? {
		guard let value = header else {
			return nil
		}

		let sequences = value.split(separator: " ")

		// take the last sequence as the access token
		let token = sequences[sequences.count - 1]

		return String(token)
	}
}
