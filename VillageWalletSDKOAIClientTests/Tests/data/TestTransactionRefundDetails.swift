import Foundation
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

func aNewTransactionRefund() -> TransactionRefundDetails {
	TestTransactionRefundDetails()
}

class TestTransactionRefundDetails: TransactionRefundDetails {
	func reason() -> String {
		""
	}
}
