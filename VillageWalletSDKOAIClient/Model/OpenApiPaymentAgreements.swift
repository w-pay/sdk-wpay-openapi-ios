import UIKit
import VillageWalletSDK

class OpenApiPaymentAgreement: PaymentAgreement {
	private let agreement: OAIPaymentAgreement

	init(agreement: OAIPaymentAgreement) {
		self.agreement = agreement
	}

	var paymentToken: String {
		agreement.paymentToken
	}

	var status: PaymentInstrumentStatus {
		PaymentInstrumentStatus(rawValue: agreement.status.uppercased())!
	}

	var lastUpdated: Date? {
		dateFromString(agreement.lastUpdated)
	}

	var lastUsed: Date? {
		dateFromString(agreement.lastUsed)
	}

	var createdOn: Date? {
		agreement.createdOn
	}

	var primary: Bool? {
		agreement.primary?.boolValue
	}

	var allowed: Bool? {
		agreement.allowed?.boolValue
	}

	var type: PaymentAgreementType {
		PaymentAgreementType(rawValue: agreement.type.uppercased())!
	}

	var paymentInstrumentId: String {
		agreement.paymentInstrumentId
	}

	var scheme: String? {
		agreement.scheme
	}

	var cardSuffix: String? {
		agreement.cardSuffix
	}

	var expiryMonth: String? {
		agreement.expiryMonth
	}

	var expiryYear: String? {
		agreement.expiryYear
	}

	var startDate: Date? {
		dateFromString(agreement.startDate)
	}

	var endDate: Date? {
		dateFromString(agreement.endDate)
	}

	var chargeFrequency: PaymentAgreementChargeFrequency {
		PaymentAgreementChargeFrequency(rawValue: agreement.chargeFrequency.uppercased())!
	}

	var chargeAmount: Decimal {
		agreement.chargeAmount.decimalValue
	}

	var chargeCycle: Decimal {
		agreement.chargeCycle.decimalValue
	}

	var expired: Bool? {
		guard let expired = agreement.expired else {
			return nil
		}

		return expired == "true"
	}

	var updateURL: String {
		agreement.updateURL
	}

	var stepUp: PaymentAgreementStepUp? {
		guard let stepUp = agreement.stepUp else {
			return nil
		}

		return OpenApiPaymentAgreementStepUp(stepUp: stepUp)
	}

	var description: String? {
		agreement.description
	}
}

class OpenApiPaymentAgreementStepUp: PaymentAgreementStepUp {
	private let stepUp: OAIListPaymentInstrumentsResponseStepUp1

	init(stepUp: OAIListPaymentInstrumentsResponseStepUp1) {
		self.stepUp = stepUp
	}

	var type: String {
		stepUp.type
	}

	var mandatory: Bool? {
		stepUp.mandatory?.boolValue
	}

	var url: String {
		stepUp.url
	}
}

class OpenApiPaymentAgreements: PaymentAgreements {
	private let agreements: [OAIPaymentAgreement]

	init(agreements: [OAIPaymentAgreement]) {
		self.agreements = agreements
	}

	var paymentAgreements: [PaymentAgreement] {
		agreements.map(OpenApiPaymentAgreement.init)
	}
}

func fromPaymentAgreement(_ agreement: PaymentAgreement?) -> OAIPaymentAgreement? {
	guard let theAgreement = agreement else {
		return nil
	}

	let paymentAgreement = OAIPaymentAgreement()

	paymentAgreement.paymentToken = theAgreement.paymentToken
	paymentAgreement.status = theAgreement.status.rawValue
	paymentAgreement.lastUpdated = dateToString(theAgreement.lastUpdated)
	paymentAgreement.lastUsed = dateToString(theAgreement.lastUsed)
	paymentAgreement.createdOn = theAgreement.createdOn
	paymentAgreement.primary = theAgreement.primary as NSNumber?
	paymentAgreement.allowed = theAgreement.allowed as NSNumber?
	paymentAgreement.type = theAgreement.type.rawValue
	paymentAgreement.paymentInstrumentId = theAgreement.paymentInstrumentId
	paymentAgreement.scheme = theAgreement.scheme
	paymentAgreement.cardSuffix = theAgreement.cardSuffix
	paymentAgreement.expiryMonth = theAgreement.expiryMonth
	paymentAgreement.expiryYear = theAgreement.expiryYear
	paymentAgreement.startDate = dateToString(theAgreement.startDate)
	paymentAgreement.endDate = dateToString(theAgreement.endDate)
	paymentAgreement.chargeFrequency = theAgreement.chargeFrequency.rawValue
	paymentAgreement.chargeAmount = theAgreement.chargeAmount as NSNumber
	paymentAgreement.chargeCycle = theAgreement.chargeCycle as NSNumber
	paymentAgreement.expired = theAgreement.expired?.description
	paymentAgreement.updateURL = theAgreement.updateURL
	paymentAgreement.stepUp = fromPaymentAgreementStepUp(theAgreement.stepUp)
	paymentAgreement._description = theAgreement.description

	return paymentAgreement
}

func fromPaymentAgreementStepUp(
	_ stepUp: PaymentAgreementStepUp?
) -> OAIListPaymentInstrumentsResponseStepUp1? {
	guard let theStepUp = stepUp else {
		return nil
	}

	let stepUp = OAIListPaymentInstrumentsResponseStepUp1()
	stepUp.type = theStepUp.type
	stepUp.mandatory = theStepUp.mandatory as NSNumber?
	stepUp.url = theStepUp.url

	return stepUp
}
