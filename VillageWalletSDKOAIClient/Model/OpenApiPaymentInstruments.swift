import UIKit
import VillageWalletSDK

class OpenApiAllPaymentInstruments: OpenApiPaymentInstruments, WalletContents {
	private let everydayPayData: OAIGetCustomerPaymentInstrumentsResultsDataEverydayPay?

	init(
		creditCards: [OAICreditCard],
		giftCards: [OAIGiftCard],
		everydayPay: OAIGetCustomerPaymentInstrumentsResultsDataEverydayPay?
	) {
		self.everydayPayData = everydayPay

		super.init(creditCards: creditCards, giftCards: giftCards, wallet: Wallet.MERCHANT)
	}

	var everydayPay: PaymentInstruments? {
		guard let everydayData = everydayPayData else {
			return nil
		}

		return OpenApiPaymentInstruments(
			creditCards: everydayData.creditCards as! [OAICreditCard],
			giftCards: everydayData.giftCards as! [OAIGiftCard],
			wallet: Wallet.EVERYDAY_PAY)
	}
}

class OpenApiPaymentInstruments: PaymentInstruments {
	private let theCreditCards: [OAICreditCard]
	private let theGiftCards: [OAIGiftCard]
	private let wallet: Wallet

	init(creditCards: [OAICreditCard], giftCards: [OAIGiftCard], wallet: Wallet) {
		self.theCreditCards = creditCards
		self.theGiftCards = giftCards
		self.wallet = wallet
	}

	var creditCards: [CreditCard] {
		theCreditCards.map({ item in OpenApiCreditCard(creditCard: item, wallet: wallet) })
	}

	var giftCards: [GiftCard] {
		theGiftCards.map({ item in OpenApiGiftCard(giftCard: item, wallet: wallet) })
	}
}

class OpenApiCreditCard: CreditCard {
	private let creditCard: OAICreditCard
	private let theWallet: Wallet

	init(creditCard: OAICreditCard, wallet: Wallet) {
		self.creditCard = creditCard
		self.theWallet = wallet
	}

	var paymentInstrumentId: String {
		creditCard.paymentInstrumentId
	}

	var cardSuffix: String {
		creditCard.cardSuffix
	}

	var cardName: String {
		creditCard.cardName
	}

	var cvvValidated: Bool {
		creditCard.cvvValidated.boolValue
	}

	var expired: Bool {
		creditCard.expired.boolValue
	}

	var expiryMonth: String {
		creditCard.expiryMonth
	}

	var expiryYear: String {
		creditCard.expiryYear
	}

	var requiresCVV: Bool {
		creditCard.requiresCVV.boolValue
	}

	var scheme: String {
		creditCard.scheme
	}

	var updateURL: URL {
		URL(string: creditCard.updateURL)!
	}

	var stepUp: CreditCardStepUp {
		OpenApiCreditCardStepUp(stepUp: creditCard.stepUp)
	}

	var allowed: Bool {
		creditCard.allowed.boolValue
	}

	var lastUpdated: Date {
		creditCard.lastUpdated
	}

	var lastUsed: Date? {
		creditCard.lastUsed
	}

	var paymentToken: String {
		creditCard.paymentToken
	}

	var primary: Bool {
		creditCard.primary.boolValue
	}

	var status: PaymentInstrumentStatus? {
		PaymentInstrumentStatus(rawValue: creditCard.status.uppercased())
	}

	var wallet: Wallet {
		theWallet
	}
}

class OpenApiGiftCard: GiftCard {
	private let giftCard: OAIGiftCard
	private let theWallet: Wallet

	init(giftCard: OAIGiftCard, wallet: Wallet) {
		self.giftCard = giftCard
		self.theWallet = wallet
	}

	var paymentInstrumentId: String {
		giftCard.paymentInstrumentId
	}

	var cardSuffix: String {
		giftCard.cardSuffix
	}

	var programName: String {
		giftCard.programName
	}

	var stepUp: GiftCardStepUp? {
		guard let stepUp = giftCard.stepUp else {
			return nil
		}

		return OpenApiGiftCardStepUp(stepUp: stepUp)
	}

	var allowed: Bool {
		giftCard.allowed.boolValue
	}

	var lastUpdated: Date {
		giftCard.lastUpdated
	}

	var lastUsed: Date? {
		giftCard.lastUsed
	}

	var paymentToken: String {
		giftCard.paymentToken
	}

	var primary: Bool {
		giftCard.primary.boolValue
	}

	var status: PaymentInstrumentStatus? {
		PaymentInstrumentStatus(rawValue: giftCard.status.uppercased())
	}

	var wallet: Wallet {
		theWallet
	}
}

class OpenApiCreditCardStepUp: CreditCardStepUp {
	private let stepUp: OAICreditCardStepUp

	init(stepUp: OAICreditCardStepUp) {
		self.stepUp = stepUp
	}

	var type: String {
		stepUp.type
	}

	var mandatory: Bool {
		stepUp.mandatory.boolValue
	}

	var url: URL {
		URL(string: stepUp.url)!
	}
}

class OpenApiGiftCardStepUp: GiftCardStepUp {
	private let stepUp: OAIGetCustomerPaymentInstrumentResultDataPaymentInstrumentDetailStepUp

	init(stepUp: OAIGetCustomerPaymentInstrumentResultDataPaymentInstrumentDetailStepUp) {
		self.stepUp = stepUp
	}

	var type: String {
		stepUp.type
	}

	var mandatory: Bool {
		stepUp.mandatory.boolValue
	}
}
