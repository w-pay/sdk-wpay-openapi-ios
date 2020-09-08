import Foundation
import XCTest
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

func isSuccessfulWith<T>(completion: @escaping ApiCompletion<T>) -> ApiCompletion<T> {
	{ (result) in
			switch(result) {
				case .failure(let error):
					XCTFail("Received error \(error)")
					break

				default: break
					// do nothing
			}

		completion(result)
	}
}

func isSuccessful<T>(promise: XCTestExpectation) -> ApiCompletion<T> {
	isSuccessfulWith { result in
		promise.fulfill()
	}
}