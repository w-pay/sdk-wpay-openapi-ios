import UIKit
import VillageWalletSDK

class OpenApiTokenizeGiftcardResponse: TokenizeGiftcardResponse {
	private let response: AnyObject

	init(response: AnyObject) {
		self.response = response
	}

	var giftCard: TokenizedGiftCard {
		OpenApiTokenizedGiftCard(card: response.giftCard)
	}

	var balance: Decimal {
		response.balance.decimalValue
	}

	var expiryDay: String {
		response.expiryDay
	}

	var expiryMonth: String {
		response.expiryMonth
	}

	var expiryYear: String {
		response.expiryYear
	}

	var expired: Bool? {
		response.expired?.boolValue
	}
}

class OpenApiTokenizedGiftCard: TokenizedGiftCard {
	private let card: OAITokenizeGiftcardResponseGiftCard

	init(card: OAITokenizeGiftcardResponseGiftCard) {
		self.card = card
	}

	var paymentInstrumentId: String {
		card.paymentInstrumentId
	}

	var status: Status {
		Status(rawValue: card.status.uppercased())!
	}

	var lastUpdated: String {
		card.lastUpdated
	}

	var lastUsed: String {
		card.lastUpdated
	}

	var primary: Bool? {
		card.primary?.boolValue
	}

	var allowed: Bool? {
		card.allowed.boolValue
	}

	var programName: String {
		card.programName
	}

	var cardSuffix: String {
		card.cardSuffix
	}
}