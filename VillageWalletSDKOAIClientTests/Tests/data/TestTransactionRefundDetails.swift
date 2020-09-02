import Foundation
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

func aNewTransactionRefund() -> TransactionRefundDetails {
	TestTransactionRefundDetails()
}

class TestTransactionRefundDetails: TransactionRefundDetails {
	var reason: String {
		"no reason"
	}

	var clientReference: String? {
		nil
	}
}
