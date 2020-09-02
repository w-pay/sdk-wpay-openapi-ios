import Foundation
import XCTest
import Hamcrest
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

func hasError<E>(_ matcher: Matcher<E>) -> Matcher<Result<Any, E>> {
	Matcher("A failure") { (result: Result<Any, E>) -> Bool in
		switch(result) {
			case .failure(let error):
				return matcher.matches(error).boolValue

			default:
				XCTFail("Didn't get a failure Result")
		}

		return false
	}
}