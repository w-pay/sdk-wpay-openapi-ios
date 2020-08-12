import XCTest
import Hamcrest

@testable import VillageWalletSDKOAIClient

class VillageApiRepositoryTest: XCTestCase {
	internal func apiResultExpectation() -> XCTestExpectation {
		expectation(description: "API result")
	}
}
