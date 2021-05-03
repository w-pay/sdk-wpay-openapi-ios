import UIKit
import VillageWalletSDK

class OpenApiOpenPayCompletionResponse: OpenPayCompletionResponse {
	private let response: OAIOpenpayCompletionsSuccessResponse

	init(response: OAIOpenpayCompletionsSuccessResponse) {
		self.response = response
	}

	var transactionReceipt: String {
		response.transactionReceipt
	}

	var completionResponses: [OpenPayTransactionCompletionResponse] {
		response.completionResponses.map {
			it in OpenApiOpenPayTransactionCompletionResponse(
				response: it as! OAIOpenpayCompletionsSuccessResponseCompletionResponses
			)
		}
	}
}

class OpenApiOpenPayTransactionCompletionResponse: OpenPayTransactionCompletionResponse {
	private let response: OAIOpenpayCompletionsSuccessResponseCompletionResponses

	init(response: OAIOpenpayCompletionsSuccessResponseCompletionResponses) {
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

	var externalServiceCode: String {
		response.externalServiceCode
	}

	var externalServiceMessage: String {
		response.externalServiceMessage
	}

	var extendedTransactionData: [OpenPayExtendedTransactionData]? {
		guard let extendedTransactionData = response.extendedTransactionData else {
			return nil
		}

		return extendedTransactionData.map {
			it in OpenApiOpenPayExtendedTransactionData(
				data: it as! OAIOpenpayPaymentsSuccessResponseExtendedTransactionData
			)
		}
	}
}
