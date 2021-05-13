import UIKit
import VillageWalletSDK

class OpenApiDigitalPayPaymentResponse: DigitalPayPaymentResponse {
	private let response: OAIPaymentsSuccessResponse

	init(response: OAIPaymentsSuccessResponse) {
		self.response = response
	}

	var transactionReceipt: String {
		response.transactionReceipt
	}

	var partialSuccess: Bool? {
		response.partialSuccess.boolValue
	}

	var fraudResponse: DigitalPayFraudResponse {
		OpenApiDigitalPayFraudResponse(response: response.fraudResponse)
	}

	var creditCards: [DigitalPayCreditCard] {
		response.creditCards.map({ it in
			OpenApiDigitalPayCreditCard(card: it as! OAIPaymentsSuccessResponseCreditCards)
		})
	}

	var giftCards: [DigitalPayGiftCard] {
		response.giftCards.map({ it in
			OpenApiDigitalPayGiftCard(card: it as! OAIPaymentsSuccessResponseGiftCards)
		})
	}

	var payPal: [DigitalPayPayPal] {
		response.payPal.map({ it in
			OpenApiDigitalPayPayPal(response: it as! OAIPaymentsSuccessResponsePayPal)
		})
	}

	var androidPay: [Any] {
		response.androidPay
	}

	var googlePay: [DigitalPayGooglePay] {
		response.googlePay.map { it in
			OpenApiDigitalPayGooglePay(data: it as! OAIPaymentsSuccessResponseGooglePay)
		}
	}

	var applePay: [DigitalPayApplePay] {
		response.applePay.map { it in
			OpenApiDigitalPayApplePay(data: it as! OAIPaymentsSuccessResponseApplePay)
		}
	}

	var unknown: [DigitalPayPaymentInstrument] {
		response.unknown.map { it in
			OpenApiDigitalPayPaymentInstrument(instrument: it as! OAIPaymentsSuccessResponseUnknown)
		}
	}
}

class OpenApiDigitalPayFraudResponse: DigitalPayFraudResponse {
	private let response: OAIPaymentsSuccessResponseFraudResponse

	init(response: OAIPaymentsSuccessResponseFraudResponse) {
		self.response = response
	}

	var clientId: String {
		response.clientId
	}

	var reasonCode: String {
		response.reasonCode
	}

	var decision: String {
		response.decision
	}
}

class OpenApiDigitalPayPaymentInstrument: DigitalPayPaymentInstrument {
	private let instrument: OAIPaymentsSuccessResponseUnknown

	init(instrument: OAIPaymentsSuccessResponseUnknown) {
		self.instrument = instrument
	}

	var paymentInstrumentId: String {
		instrument.paymentInstrumentId
	}

	var paymentToken: String {
		instrument.paymentToken
	}

	// TODO: Remove me
	var paymentTransactionRef: String {
		""
	}

	var errorCode: String? {
		instrument.errorCode
	}

	var errorMessage: String? {
		instrument.errorMessage
	}

	var errorDetail: String? {
		instrument.errorDetail
	}


}

class OpenApiDigitalPayCreditCard: DigitalPayCreditCard {
	private let card: OAIPaymentsSuccessResponseCreditCards

	init(card: OAIPaymentsSuccessResponseCreditCards) {
		self.card = card
	}

	var stepUp: CreditCardStepUp? {
		guard let stepUp = card.stepUp else {
			return nil
		}

		return OpenApiDigitalCreditCardStepUp(stepUp: stepUp)
	}

	var receiptData: DigitalPayRecieptData? {
		guard let receiptData = card.receiptData else {
			return nil
		}

		return OpenApiDigitalPayRecieptData(data: receiptData)
	}

	var extendedTransactionData: [DigitalPayExtendedTransactionData]? {
		guard let extendedTransactionData = card.extendedTransactionData else {
			return nil
		}

		return extendedTransactionData.map({
			it in OpenApiDigitalPayExtendedTransactionData(data: it as! OAIPaymentsSuccessResponseExtendedTransactionData)
		})
	}

	var externalServiceCode: String? {
		card.externalServiceCode
	}

	var externalServiceMessage: String? {
		card.externalServiceMessage
	}

	var handlingInstructions: DigitalPayHandlingInstructions? {
		guard let handlingInstructions = card.handlingInstructions else {
			return nil
		}

		return OpenApiDigitalPayHandlingInstructions(instructions: handlingInstructions)
	}

	var paymentInstrumentId: String {
		card.paymentInstrumentId
	}

	var paymentToken: String {
		card.paymentToken
	}

	var paymentTransactionRef: String {
		card.paymentTransactionRef
	}

	var errorCode: String? {
		card.errorCode
	}

	var errorMessage: String? {
		card.errorMessage
	}

	var errorDetail: String? {
		card.errorDetail
	}
}

class OpenApiDigitalPayHandlingInstructions: DigitalPayHandlingInstructions {
	private let instructions: OAIPaymentsSuccessResponseHandlingInstructions

	init(instructions: OAIPaymentsSuccessResponseHandlingInstructions) {
		self.instructions = instructions
	}

	var instructionCode: DigitalPayInstructionCode {
		DigitalPayInstructionCode(rawValue: instructions.instructionCode)!
	}

	var instructionMessage: String {
		instructions.instructionMessage
	}
}

class OpenApiDigitalPayGiftCard: DigitalPayGiftCard {
	private let card: OAIPaymentsSuccessResponseGiftCards

	init(card: OAIPaymentsSuccessResponseGiftCards) {
		self.card = card
	}

	var stepUp: CreditCardStepUp? {
		guard let stepUp = card.stepUp else {
			return nil
		}

		return OpenApiDigitalCreditCardStepUp(stepUp: stepUp)
	}

	var receiptData: DigitalPayRecieptData? {
		guard let receiptData = card.receiptData else {
			return nil
		}

		return OpenApiDigitalPayRecieptData(data: receiptData)
	}

	var externalServiceCode: String? {
		card.externalServiceCode
	}

	var externalServiceMessage: String? {
		card.externalServiceMessage
	}

	var paymentInstrumentId: String {
		card.paymentInstrumentId
	}

	var paymentToken: String {
		card.paymentToken
	}

	var paymentTransactionRef: String {
		card.paymentTransactionRef
	}

	var errorCode: String? {
		card.errorCode
	}

	var errorMessage: String? {
		card.errorMessage
	}

	var errorDetail: String? {
		card.errorDetail
	}
}

class OpenApiDigitalPayPayPal: DigitalPayPayPal {
	private let response: OAIPaymentsSuccessResponsePayPal

	init(response: OAIPaymentsSuccessResponsePayPal) {
		self.response = response
	}

	var receiptData: DigitalPayRecieptData? {
		guard let receiptData = response.receiptData else {
			return nil
		}

		return OpenApiDigitalPayRecieptData(data: receiptData)
	}

	var externalServiceCode: String? {
		response.externalServiceCode
	}

	var externalServiceMessage: String? {
		response.externalServiceMessage
	}

	var paymentInstrumentId: String {
		response.paymentInstrumentId
	}

	var paymentToken: String {
		response.paymentToken
	}

	var paymentTransactionRef: String {
		response.paymentTransactionRef
	}

	var errorCode: String? {
		response.errorCode
	}

	var errorMessage: String? {
		response.errorMessage
	}

	var errorDetail: String? {
		response.errorDetail
	}
}

class OpenApiDigitalPayGooglePay: DigitalPayGooglePay {
	private let data: OAIPaymentsSuccessResponseGooglePay

	init(data: OAIPaymentsSuccessResponseGooglePay) {
		self.data = data
	}

	var stepUp: CreditCardStepUp? {
		guard let stepUp = data.stepUp else {
			return nil
		}

		return OpenApiDigitalCreditCardStepUp(stepUp: stepUp)
	}

	var extendedTransactionData: [DigitalPayExtendedTransactionData]? {
		guard let extendedTransactionData = data.extendedTransactionData else {
			return nil
		}

		return extendedTransactionData.map { it in
			OpenApiDigitalPayExtendedTransactionData(data: it as! OAIPaymentsSuccessResponseExtendedTransactionData)
		}
	}

	var externalServiceCode: String? {
		data.externalServiceCode
	}

	var externalServiceMessage: String? {
		data.externalServiceMessage
	}

	var paymentInstrumentId: String {
		data.paymentInstrumentId
	}

	var paymentToken: String {
		data.paymentToken
	}

	var paymentTransactionRef: String {
		data.paymentTransactionRef
	}

	var errorCode: String? {
		data.errorCode
	}

	var errorMessage: String? {
		data.errorMessage
	}

	var errorDetail: String? {
		data.errorDetail
	}
}

class OpenApiDigitalPayApplePay: DigitalPayApplePay {
	private let data: OAIPaymentsSuccessResponseApplePay

	init(data: OAIPaymentsSuccessResponseApplePay) {
		self.data = data
	}

	var stepUp: CreditCardStepUp? {
		guard let stepUp = data.stepUp else {
			return nil
		}

		return OpenApiDigitalCreditCardStepUp(stepUp: stepUp)
	}

	var paymentInstrumentId: String {
		data.paymentInstrumentId
	}

	var paymentToken: String {
		data.paymentToken
	}

	var paymentTransactionRef: String {
		data.paymentTransactionRef
	}

	var errorCode: String? {
		data.errorCode
	}

	var errorMessage: String? {
		data.errorMessage
	}

	var errorDetail: String? {
		data.errorDetail
	}
}

class OpenApiDigitalCreditCardStepUp: CreditCardStepUp {
	private let stepUp: AnyObject

	init(stepUp: AnyObject) {
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

class OpenApiDigitalPayRecieptData: DigitalPayRecieptData {
	private let data: AnyObject

	init(data: AnyObject) {
		self.data = data
	}

	var cardSuffix: String {
		data.cardSuffix
	}

	var scheme: String {
		data.scheme!
	}

	var expiryMonth: String {
		data.expiryMonth
	}

	var expiryYear: String {
		data.expiryYear
	}
}

class OpenApiDigitalPayExtendedTransactionData: DigitalPayExtendedTransactionData {
	private let data: OAIPaymentsSuccessResponseExtendedTransactionData

	init(data: OAIPaymentsSuccessResponseExtendedTransactionData) {
		self.data = data
	}

	var field: DigitalPayExtendedTransactionDataFieldName {
		DigitalPayExtendedTransactionDataFieldName(rawValue: data.field.uppercased())!
	}

	var value: String {
		data.value
	}
}