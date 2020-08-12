import Foundation
import XCTest
import Hamcrest
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

func isCustomerPaymentRequest() -> Matcher<CustomerPaymentRequest> {
	Matcher("A customer payment request") { (item) -> Bool in
		assertThat(item.merchantId(), not(blankOrNilString()))
		assertThat(item.basket()!, isBasket())

		return true
	}
}