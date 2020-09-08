import UIKit
import VillageWalletSDK

class OpenApiCustomerPaymentRequest: CustomerPaymentRequest {
	private let customerPaymentDetails: OAICustomerPaymentDetail

	init(customerPaymentDetails: OAICustomerPaymentDetail) {
		self.customerPaymentDetails = customerPaymentDetails
	}

	var paymentRequestId: String {
		customerPaymentDetails.paymentRequestId
	}

	var merchantReferenceId: String {
		customerPaymentDetails.merchantReferenceId
	}

	var grossAmount: Decimal {
		customerPaymentDetails.grossAmount.decimalValue
	}

	var merchantId: String {
		customerPaymentDetails.merchantId
	}

	var basket: Basket? {
		guard let basket = customerPaymentDetails.basket else {
			return nil
		}

		return OpenApiBasket(basket: basket)
	}
}
