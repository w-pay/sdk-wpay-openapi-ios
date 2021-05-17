import UIKit
import VillageWalletSDK

class OpenApiGiftcardsBalanceResponse: GiftcardsBalanceResponse {
	private let response: OAIGiftcardsBalanceResponse

	init(response: OAIGiftcardsBalanceResponse) {
		self.response = response
	}

	var giftCardBalances: [GiftCardBalance] {
		response.giftCardBalances.map { it in
			OpenApiGiftCardBalance(balance: it as! OAIGiftcardsBalanceResponseGiftCardBalances)
		}
	}
}

class OpenApiGiftCardBalance: GiftCardBalance {
	private let cardBalance: OAIGiftcardsBalanceResponseGiftCardBalances

	init(balance: OAIGiftcardsBalanceResponseGiftCardBalances) {
		self.cardBalance = balance
	}

	var cardNumber: String {
		cardBalance.cardNumber
	}

	var paymentInstrumentId: String {
		cardBalance.paymentInstrumentId
	}

	var balance: Decimal {
		cardBalance.balance.decimalValue
	}

	var expiryDay: String {
		cardBalance.expiryDay
	}

	var expiryMonth: String {
		cardBalance.expiryMonth
	}

	var expiryYear: String {
		cardBalance.expiryYear
	}

	var expired: Bool? {
		cardBalance.expired.boolValue
	}
}