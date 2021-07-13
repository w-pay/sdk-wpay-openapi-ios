import UIKit
import VillageWalletSDK

class OpenApiAllowedPaymentMethodsGiftCard: AllowedPaymentMethodsGiftCard {
	private let card: OAIMerchantProfileResponseAllowedPaymentMethodsGiftCard

	init(card: OAIMerchantProfileResponseAllowedPaymentMethodsGiftCard) {
		self.card = card
	}

	var allowedBins: [String] {
		card.allowedBins
	}

	var serviceStatus: ServiceStatus {
		ServiceStatus(rawValue: card.serviceStatus.uppercased())!
	}

	var pinAlwaysRequired: Bool? {
		card.pinAlwaysRequired?.boolValue
	}
}

class OpenApiAllowedPaymentMethodsCreditCard: AllowedPaymentMethodsCreditCard {
	private let card: OAIMerchantProfileResponseAllowedPaymentMethodsCreditCard

	init(card: OAIMerchantProfileResponseAllowedPaymentMethodsCreditCard) {
		self.card = card
	}

	var allowedNetworks: [String] {
		card.allowedNetworks
	}

	var allowedTransactionTypes: [TransactionTypeEnum] {
		card.allowedTransactionTypes.map { it in TransactionTypeEnum(rawValue: it.uppercased())! }
	}

	var serviceStatus: ServiceStatus {
		ServiceStatus(rawValue: card.serviceStatus.uppercased())!
	}
}

class OpenApiAllowedPaymentMethodsPaypal: AllowedPaymentMethodsPaypal {
	private let method: OAIMerchantProfileResponseAllowedPaymentMethodsPayPal

	init(method: OAIMerchantProfileResponseAllowedPaymentMethodsPayPal) {
		self.method = method
	}

	var clientToken: String {
		method.clientToken
	}

	var serviceStatus: ServiceStatus {
		ServiceStatus(rawValue: method.serviceStatus.uppercased())!
	}
}

class OpenApiAllowedPaymentMethodsGooglePay: AllowedPaymentMethodsGooglePay {
	private let method: OAIMerchantProfileResponseAllowedPaymentMethodsGooglePay

	init(method: OAIMerchantProfileResponseAllowedPaymentMethodsGooglePay) {
		self.method = method
	}

	var publicKey: String {
		method.publicKey
	}

	var publicKeyHash: String {
		method.publicKeyHash
	}

	var publicKeyExpiry: Decimal {
		method.publicKeyExpiry.decimalValue
	}

	var merchantId: String {
		method.merchantId
	}

	var merchantName: String {
		method.merchantName
	}

	var creditCard: Card {
		OpenApiCard(card: method.creditCard)
	}

	var debitCard: Card {
		OpenApiCard(card: method.debitCard)
	}

	var serviceStatus: ServiceStatus {
		ServiceStatus(rawValue: method.serviceStatus.uppercased())!
	}
}

class OpenApiAllowedPaymentMethodsApplePay: AllowedPaymentMethodsApplePay {
	private let method: OAIMerchantProfileResponseAllowedPaymentMethodsApplePay

	init(method: OAIMerchantProfileResponseAllowedPaymentMethodsApplePay) {
		self.method = method
	}

	var creditCard: Card {
		OpenApiCard(card: method.creditCard)
	}

	var debitCard: Card {
		OpenApiCard(card: method.debitCard)
	}

	var serviceStatus: ServiceStatus {
		ServiceStatus(rawValue: method.serviceStatus.uppercased())!
	}
}

class OpenApiCard: Card {
	private let card: AnyObject

	init(card: AnyObject) {
		self.card = card
	}

	var allowedNetworks: [String] {
		card.allowedNetworks
	}

	var allowedTransactionTypes: [TransactionTypeEnum] {
		card.allowedTransactionTypes.map { it in TransactionTypeEnum(rawValue: it.uppercased())! }
	}
}

class OpenApiMerchantProfileResponse: MerchantProfileResponse {
	private let response: OAIMerchantProfileResponse

	init(response: OAIMerchantProfileResponse) {
		self.response = response
	}

	var allowedPaymentMethods: AllowedPaymentMethods {
		OpenApiAllowedPaymentMethods(methods: response.allowedPaymentMethods)
	}
}

class OpenApiAllowedPaymentMethods: AllowedPaymentMethods {
	private let methods: OAIMerchantProfileResponseAllowedPaymentMethods

	init(methods: OAIMerchantProfileResponseAllowedPaymentMethods) {
		self.methods = methods
	}

	var giftCard: AllowedPaymentMethodsGiftCard? {
		guard let giftCard = methods.giftCard else { return nil }

		return OpenApiAllowedPaymentMethodsGiftCard(card: giftCard)
	}

	var creditCard: AllowedPaymentMethodsCreditCard? {
		guard let creditCard = methods.creditCard else { return nil }

		return OpenApiAllowedPaymentMethodsCreditCard(card: creditCard)
	}

	var paypal: AllowedPaymentMethodsPaypal? {
		guard let payPal = methods.payPal else { return nil }

		return OpenApiAllowedPaymentMethodsPaypal(method: payPal)
	}

	var googlePay: AllowedPaymentMethodsGooglePay? {
		guard let googlePay = methods.googlePay else { return nil }

		return OpenApiAllowedPaymentMethodsGooglePay(method: googlePay)
	}

	var applePay: AllowedPaymentMethodsApplePay? {
		guard let applePay = methods.applePay else { return nil }

		return OpenApiAllowedPaymentMethodsApplePay(method: applePay)
	}
}