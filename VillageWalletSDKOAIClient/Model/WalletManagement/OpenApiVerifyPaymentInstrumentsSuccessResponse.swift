import UIKit
import VillageWalletSDK

class OpenApiVerifyPaymentInstrumentsSuccessResponse: VerifyPaymentInstrumentsSuccessResponse {
	private let response: OAIVerifyPaymentInstrumentsSuccessResponse

	init(response: OAIVerifyPaymentInstrumentsSuccessResponse) {
		self.response = response
	}

	var transactionReceipt: String {
		response.transactionReceipt
	}

	var partialSuccess: Bool? {
		response.partialSuccess?.boolValue
	}

	var fraudResponse: FraudResponse {
		OpenApiFraudResponse(response: response.fraudResponse)
	}

	var verifyResponses: [VerifyResponse] {
		response.verifyResponses.map { it in
			OpenApiVerifyResponse(response: it as! OAIVerifyPaymentInstrumentsSuccessResponseVerifyResponses)
		}
	}
}

class OpenApiFraudResponse: FraudResponse {
	private let response: OAIVerifyPaymentInstrumentsSuccessResponseFraudResponse

	init(response: OAIVerifyPaymentInstrumentsSuccessResponseFraudResponse) {
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

class OpenApiVerifyResponse: VerifyResponse {
	private let response: OAIVerifyPaymentInstrumentsSuccessResponseVerifyResponses

	init(response: OAIVerifyPaymentInstrumentsSuccessResponseVerifyResponses) {
		self.response = response
	}

	var paymentToken: String {
		response.paymentToken
	}

	var verifyTransactionRef: String {
		response.verifyTransactionRef
	}

	var externalServiceCode: String {
		response.externalServiceCode
	}

	var externalServiceMessage: String {
		response.externalServiceMessage
	}
}
