import UIKit
import VillageWalletSDK

class OpenApiMerchantPaymentSummaries: MerchantPaymentSummaries {
	private let thePayments: [OAIMerchantPaymentSummary]

	init(payments: [OAIMerchantPaymentSummary]) {
		self.thePayments = payments
	}

	var payments: [MerchantPaymentSummary] {
		thePayments.map { it in OpenApiMerchantPaymentSummary(payment: it) }
	}
}

class OpenApiMerchantPaymentSummary: MerchantPaymentSummary {
	private let payment: OAIMerchantPaymentSummary

	init(payment: OAIMerchantPaymentSummary) {
		self.payment = payment
	}

	var usesRemaining: Int? {
		payment.usesRemaining as? Int
	}

	var expiryTime: Date? {
		payment.expiryTime
	}

	var specificWalletId: String? {
		payment.specificWalletId
	}

	var paymentRequestId: String {
		payment.paymentRequestId
	}

	var merchantReferenceId: String {
		payment.merchantReferenceId
	}

	var grossAmount: Decimal {
		payment.grossAmount.decimalValue
	}
}

class OpenApiMerchantPaymentDetails: MerchantPaymentDetails {
	private let details: OAIMerchantPaymentDetail

	init(details: OAIMerchantPaymentDetail) {
		self.details = details
	}

	var basket: Basket? {
		guard let basket = details.basket else {
			return nil
		}

		return OpenApiBasket(basket: basket)
	}

	var posPayload: PosPayload? {
		guard let payload = details.posPayload else {
		  return nil
		}

		return OpenApiPosPayload(thePayload: payload)
	}

	var merchantPayload: MerchantPayload? {
		guard let payload = details.merchantPayload else {
		  return nil
		}

		return OpenApiMerchantPayload(aPayload: payload)
	}

	var usesRemaining: Int? {
		details.usesRemaining as? Int
	}

	var expiryTime: Date? {
		details.expiryTime
	}

	var specificWalletId: String? {
		details.specificWalletId
	}

	var paymentRequestId: String {
		details.paymentRequestId
	}

	var merchantReferenceId: String {
		details.merchantReferenceId
	}

	var grossAmount: Decimal {
		details.grossAmount.decimalValue
	}
}
