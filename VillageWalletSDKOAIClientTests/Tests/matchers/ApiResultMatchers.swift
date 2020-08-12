import Foundation
import XCTest
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

func isSuccessfulWith<T>(callback: @escaping ApiResult<T>) -> ApiResult<T> {
	{ (result: T?, response: HTTPURLResponse?) in
			guard response == nil else {
				XCTFail("Received response \(response!)")

				return
			}

			callback(result, response)
	}
}

func isSuccessful<T>(promise: XCTestExpectation) -> ApiResult<T> {
	isSuccessfulWith { (result: T?, response: HTTPURLResponse?) in
		promise.fulfill()
	}
}