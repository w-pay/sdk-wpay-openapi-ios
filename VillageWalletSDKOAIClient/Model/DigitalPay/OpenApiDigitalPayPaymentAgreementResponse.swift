import UIKit
import VillageWalletSDK

class OpenApiDigitalPayPaymentAgreementResponse: DigitalPayPaymentAgreementResponse {
	private let agreement: OAIPaymentAgreementResponse

	init(agreement: OAIPaymentAgreementResponse) {
		self.agreement = agreement
	}

	var transactionReceipt: String {
		agreement.transactionReceipt
	}

	var paymentToken: String? {
		agreement.paymentToken
	}

	var paymentAgreement: DigitalPayResponsePaymentAgreement {
		OpenApiDigitalPayResponsePaymentAgreement(agreement: agreement.paymentAgreement)
	}

	var fraudResponse: DigitalPayFraudResponse? {
		OpenApiDigitalPayFraudResponse(response: agreement.fraudResponse)
	}

	var extendedTransactionData: [DigitalPayExtendedTransactionData]? {
		guard let extendedTransactionData = agreement.extendedTransactionData else {
			return nil
		}

		return extendedTransactionData.map {
			it in OpenApiDigitalPayExtendedTransactionData(data: it as! OAIPaymentsSuccessResponseExtendedTransactionData)
		}
	}

	var externalServiceCode: String? {
		agreement.externalServiceCode
	}

	var externalServiceMessage: String? {
		agreement.externalServiceMessage
	}
}

public class OpenApiDigitalPayResponsePaymentAgreement: DigitalPayResponsePaymentAgreement {
	private let agreement: OAIPaymentAgreementResponsePaymentAgreement

	public init(agreement: OAIPaymentAgreementResponsePaymentAgreement) {
		self.agreement = agreement
	}

	public var type: PaymentAgreementType {
		PaymentAgreementType(rawValue: agreement.type.uppercased())!
	}

	public var paymentInstrumentId: String {
		agreement.paymentInstrumentId
	}

	public var paymentInstrumentType: String {
		agreement.paymentInstrumentType
	}

	public var scheme: String {
		agreement.scheme
	}

	public var cardSuffix: String {
		agreement.cardSuffix
	}

	public var expiryMonth: String {
		agreement.expiryMonth
	}

	public var expiryYear: String {
		agreement.expiryYear
	}

	public var startDate: String {
		agreement.startDate
	}

	public var endDate: String {
		agreement.endDate
	}

	public var chargeFrequency: PaymentAgreementChargeFrequency {
		PaymentAgreementChargeFrequency(rawValue: agreement.chargeFrequency.uppercased())!
	}

	public var chargeAmount: Decimal {
		agreement.chargeAmount.decimalValue
	}
}