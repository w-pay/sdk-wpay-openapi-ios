import UIKit
import VillageWalletSDK

class OpenApiImportPaymentInstrumentsResponse: ImportPaymentInstrumentsResponse {
	private let response: OAIImportPaymentInstrumentsResponse

	init(response: OAIImportPaymentInstrumentsResponse) {
		self.response = response
	}

	var uid: String {
		response.uid
	}

	var shopperId: String {
		response.shopperId
	}

	var creditCards: [CreditCardResult]? {
		if let creditCards = response.creditCards {
			return creditCards.map { it in
				OpenApiCreditCardResult(card: it as! OAIImportPaymentInstrumentsResponseCreditCards)
			}
		}

		return nil
	}

	var payPal: PayPal? {
		if let payPal = response.payPal {
			return OpenApiPayPal(payPal: payPal)
		}

		return nil
	}
}

class OpenApiPayPal: PayPal {
	private let payPal: OAIImportPaymentInstrumentsResponsePayPal

	init(payPal: OAIImportPaymentInstrumentsResponsePayPal) {
		self.payPal = payPal
	}

	var customerId: String {
		payPal.customerId
	}

	var payPalId: String {
		payPal.payPalId
	}

	var paymentMethodToken: String {
		payPal.paymentMethodToken
	}

	var result: ResultEnum {
		ResultEnum(rawValue: payPal.result.uppercased())!
	}

	var errorMessage: ErrorMessage? {
		if let message = payPal.errorMessage {
			return OpenApiErrorMessage(message: message)
		}

		return nil
	}
}

class OpenApiErrorMessage: ErrorMessage {
	private let message: AnyObject

	init(message: AnyObject) {
		self.message = message
	}

	var description: String {
		message._description
	}
}

class OpenApiCreditCardResult: CreditCardResult {
	private let card: OAIImportPaymentInstrumentsResponseCreditCards

	init(card: OAIImportPaymentInstrumentsResponseCreditCards) {
		self.card = card
	}

	var transactionRef: String {
		card.transactionRef
	}

	var transactionTimestamp: String {
		card.transactionTimestamp
	}

	var transactionType: String {
		card.transactionType
	}

	var transactionResponseCode: String {
		card.transactionResponseCode
	}

	var transactionResponseText: String {
		card.transactionResponseText
	}

	var orderNumber: String {
		card.orderNumber
	}

	var bin: String {
		card.bin
	}

	var cardSuffix: String {
		card.cardSuffix
	}

	var expiryMonth: String {
		card.expiryMonth
	}

	var expiryYear: String {
		card.expiryYear
	}

	var amount: Decimal {
		card.amount.decimalValue
	}

	var result: ResultEnum {
		ResultEnum(rawValue: card.result.uppercased())!
	}

	var errorMessage: ErrorMessage? {
		if let errorMessage = card.errorMessage {
			return OpenApiErrorMessage(message: errorMessage)
		}

		return nil
	}
}