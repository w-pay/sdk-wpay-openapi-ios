import UIKit
import VillageWalletSDK

class OpenApiDigitalPayCompletionResponse: DigitalPayCompletionResponse {
	private let response: OAICompletionsSuccessResponse

	init(response: OAICompletionsSuccessResponse) {
		self.response = response
	}

	var transactionReceipt: String {
		response.transactionReceipt
	}

	var partialSuccess: Bool? {
		response.partialSuccess.boolValue
	}

	var completionResponses: [DigitalPayTransactionCompletionResponse] {
		response.completionResponses.map { it in
			OpenApiDigitalPayTransactionCompletionResponse(response: it as! OAICompletionsSuccessResponseCompletionResponses)
		}
	}
}

class OpenApiDigitalPayTransactionCompletionResponse: DigitalPayTransactionCompletionResponse {
	private let response: OAICompletionsSuccessResponseCompletionResponses

	init(response: OAICompletionsSuccessResponseCompletionResponses) {
		self.response = response
	}

	var paymentTransactionRef: String {
		response.paymentTransactionRef
	}

	var completionTransactionRef: String {
		response.completionTransactionRef
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

	var externalServiceMessage: String? {
		response.externalServiceMessage
	}
}
