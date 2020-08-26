import Foundation
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

func aNewTransactionRefund() -> TransactionRefundDetails {
	TestTransactionRefundDetails()
}

class TestTransactionRefundDetails: TransactionRefundDetails {
	func reason() -> String {
		"no reason"
	}

	func clientReference() -> String? {
		nil
	}
}
