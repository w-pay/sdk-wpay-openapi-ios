import UIKit
import VillageWalletSDK

class OpenApiDigitalPayRefundResponse: DigitalPayRefundResponse {
	private let response: OAIRefundsSuccessResponse

	init(response: OAIRefundsSuccessResponse) {
		self.response = response
	}

	var transactionReceipt: String {
		response.transactionReceipt
	}

	var partialSuccess: Bool? {
		response.partialSuccess.boolValue
	}

	var refundResponses: [DigitalPayRefundTransactionResponse] {
		response.refundResponses.map { it in
			OpenApiDigitalPayRefundTransactionResponse(response: it as! OAIRefundsSuccessResponseRefundResponses)
		}
	}
}

class OpenApiDigitalPayRefundTransactionResponse: DigitalPayRefundTransactionResponse {
	private let response: OAIRefundsSuccessResponseRefundResponses

	init(response: OAIRefundsSuccessResponseRefundResponses) {
		self.response = response
	}

	var paymentTransactionRef: String {
		response.paymentTransactionRef
	}

	var refundTransactionRef: String {
		response.refundTransactionRef
	}

	var amount: Decimal {
		response.amount.decimalValue
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

	var externalServiceCode: String? {
		response.externalServiceCode
	}
	
	var externalServiceMessage: String {
		response.externalServiceMessage
	}
}
