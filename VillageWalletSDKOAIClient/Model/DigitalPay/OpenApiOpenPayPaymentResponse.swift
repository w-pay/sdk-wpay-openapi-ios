import UIKit
import VillageWalletSDK

class OpenApiOpenPayPaymentTransactionResponse: OpenPayPaymentTransactionResponse {
	private let response: OAIOpenpayPaymentsSuccessResponse

	init(response: OAIOpenpayPaymentsSuccessResponse) {
		self.response = response
	}

	var transactionReceipt: String {
		response.transactionReceipt
	}

	var paymentResponses: [OpenPayPaymentResponse] {
		response.paymentResponses.map {
			it in OpenApiOpenPayPaymentResponse(
				response: it as! OAIOpenpayPaymentsSuccessResponsePaymentResponses
			)
		}
	}
}

class OpenApiOpenPayPaymentResponse: OpenPayPaymentResponse {
	private let response: OAIOpenpayPaymentsSuccessResponsePaymentResponses

	init(response: OAIOpenpayPaymentsSuccessResponsePaymentResponses) {
		self.response = response
	}

	var paymentToken: String {
		response.paymentToken
	}

	var paymentTransactionRef: String {
		response.paymentTransactionRef
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

class OpenApiOpenPayExtendedTransactionData: OpenPayExtendedTransactionData {
	private let data: OAIOpenpayPaymentsSuccessResponseExtendedTransactionData

	init(data: OAIOpenpayPaymentsSuccessResponseExtendedTransactionData) {
		self.data = data
	}

	var field: OpenPayExtendedTransactionDataFieldName {
		OpenPayExtendedTransactionDataFieldName(rawValue: data.field.uppercased())!
	}

	var value: String {
		data.value
	}
}
