import Foundation
import Hamcrest
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

func hasPaymentSession() -> Matcher<PaymentSession> {
	Matcher("A payment session") { (item) -> Bool in
		assertThat(item.paymentSessionId(), not(blankOrNilString()))
		assertThat(item.merchantId(), not(blankOrNilString()))
		assertThat(item.walletId(), nilValue())
		assertThat(item.expiryTime(), not(nilValue()))
		assertThat(item.location(), not(blankOrNilString()))
		assertThat(item.merchantInfo(), not(nilValue()))
		assertThat(item.customerInfo(), nilValue())

		return true
	}
}

func hasPaymentSessionCreated() -> Matcher<CreatePaymentSessionResult> {
	Matcher("A created payment session") { (item) -> Bool in
		assertThat(item.paymentSessionId(), not(blankOrNilString()))
		assertThat(item.qr()!, isAQrCode())

		return true
	}
}
