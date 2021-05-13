import UIKit
import VillageWalletSDK

class OpenApiOpenPayRefundResponse: OpenPayRefundResponse {
	private let response: OAIOpenpayRefundsSuccessResponse

	init(response: OAIOpenpayRefundsSuccessResponse) {
		self.response = response
	}

	var transactionReceipt: String {
		response.transactionReceipt
	}

	var refundResponses: [OpenPayRefundTransactionResponse] {
		response.refundResponses.map {
			it in OpenApiOpenPayRefundTransactionResponse(
				response: it as! OAIOpenpayRefundsSuccessResponseRefundResponses
			)
		}
	}
}

class OpenApiOpenPayRefundTransactionResponse: OpenPayRefundTransactionResponse {
	private let response: OAIOpenpayRefundsSuccessResponseRefundResponses

	init(response: OAIOpenpayRefundsSuccessResponseRefundResponses) {
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
