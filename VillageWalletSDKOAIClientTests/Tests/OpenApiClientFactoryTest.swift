import XCTest
import Hamcrest
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

class OpenApiClientFactoryTest: XCTestCase {
	var client: OpenApiClientFactory!

	override func setUpWithError() throws {
		try super.setUpWithError()

		client = TestOpenApiClientFactory()
	}

	func testShouldReturnHttpErrorForInvalidInputResponse() {
		let error = httpError(statusCode: 400)

		let result: Result<Any, ApiError> = client.extractError(error: error)

		assertThat(result, hasError(withHttpError(ApiError.HTTPErrorReason.invalidInput)))
	}

	func testShouldReturnHttpErrorUnauthorisedResponse() {
		let error = httpError(statusCode: 401)

		let result: Result<Any, ApiError> = client.extractError(error: error)

		assertThat(result, hasError(withHttpError(ApiError.HTTPErrorReason.unauthorised)))
	}

	func testShouldReturnHttpErrorForProcessingErrorResponse() {
		let error = httpError(statusCode: 422)

		let result: Result<Any, ApiError> = client.extractError(error: error)

		assertThat(result, hasError(withHttpError(ApiError.HTTPErrorReason.processingError)))
	}

	func testShouldReturnHttpErrorForServerError() {
		let error = httpError(statusCode: 500)

		let result: Result<Any, ApiError> = client.extractError(error: error)

		assertThat(result, hasError(withHttpError(ApiError.HTTPErrorReason.serverError)))
	}

	func testShouldDefaultHttpErrorToServerErrorWhenCodeUnknown() {
		let error = httpError(statusCode: 502)

		let result: Result<Any, ApiError> = client.extractError(error: error)

		assertThat(result, hasError(withHttpError(ApiError.HTTPErrorReason.serverError)))
	}

	// TODO: Don't know how to test this.
	/*func testShouldReturnJsonEncodingError() {
		XCTFail("Implement me")
	}*/

	func testShouldReturnJsonDecodingError() {
		let error = jsonError()

		let result: Result<Any, ApiError> = client.extractError(error: error)

		assertThat(result, hasError(withJsonError()))
	}
}

class TestOpenApiClientFactory: OpenApiClientFactory {
	init() {
		super.init(
			requestHeadersFactory: RequestHeaderChain(factories: []),
			options: VillageOptions(
				apiKey: "",
				baseUrl: ""
			)
		)
	}

	public override func extractError<T>(error: NSError) -> Result<T, ApiError> {
		super.extractError(error: error)
	}
}

func httpError(statusCode: Int) -> NSError {
	let response = HTTPURLResponse(
		url: URL(string: "http://localhost")!,
		statusCode: statusCode,
		httpVersion: "1.1",
		headerFields: [:])

	let userInfo: [String: Any] = [
		"com.alamofire.serialization.response.error.response": response as Any
	]

	return NSError(domain: "com.alamofire.error.serialization.response", code: -1, userInfo: userInfo)
}

func jsonError() -> NSError {
	let userInfo: [String: Any] = [
		"kJSONModelMissingKeys": [
			"meta",
			"data"
		]
	]

	return NSError(domain: "JSONModelErrorDomain", code: -1, userInfo: userInfo)
}
