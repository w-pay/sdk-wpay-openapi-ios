import UIKit
import VillageWalletSDK

class OpenApiDigitalPayFraudResponse: DigitalPayFraudResponse {
	private let response: OAIPaymentsSuccessResponseFraudResponse

	init(response: OAIPaymentsSuccessResponseFraudResponse) {
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

class OpenApiDigitalPayExtendedTransactionData: DigitalPayExtendedTransactionData {
	private let data: OAIPaymentsSuccessResponseExtendedTransactionData

	init(data: OAIPaymentsSuccessResponseExtendedTransactionData) {
		self.data = data
	}

	var field: DigitalPayExtendedTransactionDataFieldName {
		DigitalPayExtendedTransactionDataFieldName(rawValue: data.field.uppercased())!
	}

	var value: String {
		data.value
	}
}