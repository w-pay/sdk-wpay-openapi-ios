import UIKit
import VillageWalletSDK

class OpenApiListPaymentInstrumentsResponse: ListPaymentInstrumentsResponse {
	private let response: OAIListPaymentInstrumentsResponse

	init(response: OAIListPaymentInstrumentsResponse) {
		self.response = response
	}

	var creditCards: [CreditCardDetails] {
		response.creditCards.map { it in
			OpenApiCreditCardDetails(card: it as! OAIListPaymentInstrumentsResponseCreditCards)
		}
	}

	var giftCards: [GiftCardDetails] {
		response.giftCards.map { it in
			OpenApiGiftCardDetails(card: it as! OAIListPaymentInstrumentsResponseGiftCards)
		}
	}

	var payPal: [PayPalDetails] {
		response.payPal.map { it in
			OpenApiListInstrumentPaypalDetails(details: it as! OAIListPaymentInstrumentsResponsePayPal)
		}
	}

	var paymentAgreements: [PaymentAgreementDetails] {
		response.paymentAgreements.map { it in
			OpenApiPaymentAgreementDetails(details: it as! OAIListPaymentInstrumentsResponsePaymentAgreements)
		}
	}

	var androidPay: String? {
		response.androidPay as? String
	}

	var googlePay: GooglePayDetails {
		OpenApiGooglePayDetails(details: response.googlePay)
	}

	var applePay: ApplePayDetails {
		OpenApiApplePayDetails(details: response.applePay)
	}
}

class OpenApiCreditCardDetails: CreditCardDetails {
	private let card: OAIListPaymentInstrumentsResponseCreditCards

	init(card: OAIListPaymentInstrumentsResponseCreditCards) {
		self.card = card
	}

	var paymentInstrumentId: String {
		card.paymentInstrumentId
	}

	var paymentToken: String {
		card.paymentToken
	}

	var status: PaymentInstrumentStatus {
		PaymentInstrumentStatus(rawValue: card.status.uppercased())!
	}

	var lastUpdated: String {
		card.lastUpdated
	}

	var lastUsed: String {
		card.lastUsed
	}

	var primary: Bool? {
		card.primary?.boolValue
	}

	var allowed: Bool? {
		card.allowed?.boolValue
	}

	var expiryYear: String {
		card.expiryYear
	}

	var expiryMonth: String {
		card.expiryMonth
	}

	var scheme: String {
		card.scheme
	}

	var cardSuffix: String {
		card.cardSuffix
	}

	var cvvValidated: Bool? {
		card.cvvValidated?.boolValue
	}

	var cardName: String {
		card.cardName
	}

	var expired: Bool? {
		card.expired?.boolValue
	}

	var requiresCVV: Bool? {
		card.requiresCVV?.boolValue
	}

	var updateURL: String {
		card.updateURL
	}

	var stepUp: StepUp {
		OpenApiStepUp(stepUp: card.stepUp)
	}
}

class OpenApiGiftCardDetails: GiftCardDetails {
	private let card: OAIListPaymentInstrumentsResponseGiftCards

	init(card: OAIListPaymentInstrumentsResponseGiftCards) {
		self.card = card
	}

	var paymentInstrumentId: String {
		card.paymentInstrumentId
	}

	var paymentToken: String {
		card.paymentToken
	}

	var status: PaymentInstrumentStatus {
		PaymentInstrumentStatus(rawValue: card.status.uppercased())!
	}

	var lastUpdated: String {
		card.lastUpdated
	}

	var lastUsed: String {
		card.lastUsed
	}

	var primary: Bool? {
		card.primary?.boolValue
	}

	var allowed: Bool? {
		card.allowed?.boolValue
	}

	var programName: String {
		card.programName
	}

	var cardSuffix: String {
		card.cardSuffix
	}
}

class OpenApiListInstrumentPaypalDetails: PayPalDetails {
	private let details: OAIListPaymentInstrumentsResponsePayPal

	init(details: OAIListPaymentInstrumentsResponsePayPal) {
		self.details = details
	}

	var paymentInstrumentId: String {
		details.paymentInstrumentId
	}

	var lastUpdated: String {
		details.lastUpdated
	}

	var lastUsed: String {
		details.lastUsed
	}

	var primary: Bool? {
		details.primary?.boolValue
	}

	var allowed: Bool? {
		details.allowed?.boolValue
	}

	var payPalId: String {
		details.payPalId
	}

	var customerId: String {
		details.customerId
	}

	var paymentToken: String {
		details.paymentToken
	}

	var status: PaymentInstrumentStatus {
		PaymentInstrumentStatus(rawValue: details.status.uppercased())!
	}
}

class OpenApiPaymentAgreementDetails: PaymentAgreementDetails {
	private let details: OAIListPaymentInstrumentsResponsePaymentAgreements

	init(details: OAIListPaymentInstrumentsResponsePaymentAgreements) {
		self.details = details
	}

	var paymentToken: String {
		details.paymentToken
	}

	var status: PaymentInstrumentStatus {
		PaymentInstrumentStatus(rawValue: details.status.uppercased())!
	}

	var lastUpdated: String {
		details.lastUpdated
	}

	var lastUsed: String {
		details.lastUsed
	}

	var primary: Bool? {
		details.primary?.boolValue
	}

	var allowed: Bool? {
		details.allowed?.boolValue
	}

	var type: PaymentAgreementTypeEnum {
		PaymentAgreementTypeEnum(rawValue: details.type.uppercased())!
	}

	var paymentInstrumentId: String {
		details.paymentInstrumentId
	}

	var scheme: String? {
		details.scheme
	}

	var cardSuffix: String? {
		details.cardSuffix
	}

	var expiryMonth: String? {
		details.expiryMonth
	}

	var expiryYear: String? {
		details.expiryYear
	}

	var startDate: String {
		details.startDate
	}

	var endDate: String {
		details.endDate
	}

	var chargeFrequency: ChargeFrequencyEnum {
		ChargeFrequencyEnum(rawValue: details.chargeFrequency.uppercased())!
	}

	var chargeAmount: Decimal {
		details.chargeAmount.decimalValue
	}

	var chargeCycle: Decimal {
		details.chargeCycle.decimalValue
	}

	var expired: String {
		details.expired
	}

	var updateURL: String {
		details.updateURL
	}

	var stepUp: StepUp? {
		guard let stepUp = details.stepUp else {
			return nil
		}

		return OpenApiStepUp(stepUp: stepUp)
	}
}

class OpenApiGooglePayDetails: GooglePayDetails {
	private let details: OAIListPaymentInstrumentsResponseGooglePay

	init(details: OAIListPaymentInstrumentsResponseGooglePay) {
		self.details = details
	}

	var paymentInstrumentId: String {
		details.paymentInstrumentId
	}

	var paymentToken: String {
		details.paymentToken
	}

	var status: PaymentInstrumentStatus {
		PaymentInstrumentStatus(rawValue: details.status.uppercased())!
	}

	var lastUpdated: String {
		details.lastUpdated
	}

	var lastUsed: String {
		details.lastUsed
	}

	var primary: Bool? {
		details.primary?.boolValue
	}

	var allowed: Bool? {
		details.allowed?.boolValue
	}

	var expired: Bool? {
		details.expired?.boolValue
	}

	var stepUp: StepUp? {
		guard let stepUp = details.stepUp else {
			return nil
		}

		return OpenApiStepUp(stepUp: stepUp)
	}
}

class OpenApiApplePayDetails: ApplePayDetails {
	private let details: OAIListPaymentInstrumentsResponseApplePay

	init(details: OAIListPaymentInstrumentsResponseApplePay) {
		self.details = details
	}

	var paymentInstrumentId: String {
		details.paymentInstrumentId
	}

	var paymentToken: String {
		details.paymentToken
	}

	var status: PaymentInstrumentStatus {
		PaymentInstrumentStatus(rawValue: details.status.uppercased())!
	}

	var lastUpdated: String {
		details.lastUpdated
	}

	var lastUsed: String {
		details.lastUsed
	}

	var primary: Bool? {
		details.primary?.boolValue
	}

	var allowed: Bool? {
		details.allowed?.boolValue
	}

	var stepUp: StepUp {
		OpenApiStepUp(stepUp: details.stepUp)
	}
}

class OpenApiStepUp: StepUp {
	private let stepUp: AnyObject

	init(stepUp: AnyObject) {
		self.stepUp = stepUp
	}

	var type: StepUpTypeEnum {
		StepUpTypeEnum(rawValue: stepUp.type.uppercased())!
	}

	var mandatory: Bool? {
		stepUp.mandatory?.boolValue
	}

	var url: String {
		stepUp.url
	}
}