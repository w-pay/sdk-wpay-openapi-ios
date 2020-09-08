import Foundation
import XCTest
import Hamcrest
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

func withHttpError(_ expectedReason: ApiError.HTTPErrorReason) -> Matcher<ApiError> {
	Matcher("A HTTP API error") { (item: ApiError) -> Bool in
		switch (item) {
			case ApiError.httpError(let reason, let resp):
				assertThat(reason, equalTo(expectedReason))
				assertThat(resp, not(nilValue()))

				return true

			default:
				break
		}

		return false
	}
}

func withJsonError() -> Matcher<ApiError> {
	Matcher("A JSON error") { (item: ApiError) -> Bool in
		switch (item) {
			case ApiError.jsonDecoding(let message, let details):
				assertThat(message, not(blankOrNilString()))
				assertThat(details, not(nilValue()))

				return true

			default:
				break
		}

		return false
	}
}