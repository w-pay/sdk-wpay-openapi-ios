import UIKit
import VillageWalletSDK

class OpenApiOpenPayVoidResponse: OpenPayVoidResponse {
	private let response: OAIOpenpayVoidsSuccessResponse

	init(response: OAIOpenpayVoidsSuccessResponse) {
		self.response = response
	}

	var transactionReceipt: String {
		response.transactionReceipt
	}

	var voidResponses: [OpenPayVoidTransactionResponse] {
		response.voidResponses.map {
			it in OpenApiOpenPayVoidTransactionResponse(
				response: it as! OAIOpenpayVoidsSuccessResponseVoidResponses
			)
		}
	}
}

class OpenApiOpenPayVoidTransactionResponse: OpenPayVoidTransactionResponse {
	private let response: OAIOpenpayVoidsSuccessResponseVoidResponses

	init(response: OAIOpenpayVoidsSuccessResponseVoidResponses) {
		self.response = response
	}

	var paymentTransactionRef: String {
		response.paymentTransactionRef
	}

	var voidTransactionRef: String {
		response.voidTransactionRef
	}

	var amount: Decimal {
		response.amount.decimalValue
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

	var externalServiceCode: String? {
		response.externalServiceCode
	}

	var externalServiceMessage: String? {
		response.externalServiceMessage
	}
}
