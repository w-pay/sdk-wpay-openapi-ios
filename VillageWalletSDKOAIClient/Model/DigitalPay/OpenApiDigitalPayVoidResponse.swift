import UIKit
import VillageWalletSDK

class OpenApiDigitalPayVoidResponse: DigitalPayVoidResponse {
	private let response: OAIVoidsSuccessResponse

	init(response: OAIVoidsSuccessResponse) {
		self.response = response
	}

	var transactionReceipt: String {
		response.transactionReceipt
	}

	var partialSuccess: Bool? {
		response.partialSuccess.boolValue
	}

	var voidResponses: [DigitalPayVoidTransactionResponse] {
		response.voidResponses.map { it in
			OpenApiDigitalPayVoidTransactionResponse(response: it as! OAIVoidsSuccessResponseVoidResponses)
		}
	}
}

class OpenApiDigitalPayVoidTransactionResponse: DigitalPayVoidTransactionResponse {
	private let response: OAIVoidsSuccessResponseVoidResponses

	init(response: OAIVoidsSuccessResponseVoidResponses) {
		self.response = response
	}

	var paymentTransactionRef: String {
		response.paymentTransactionRef
	}

	var voidTransactionRef: String {
		response.voidTransactionRef
	}

	var externalServiceCode: String? {
		response.externalServiceCode
	}

	var externalServiceMessage: String? {
		response.externalServiceMessage
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
