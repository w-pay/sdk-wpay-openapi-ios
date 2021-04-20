import UIKit
import VillageWalletSDK

public class OpenApiTransactionsApiRepository: OpenApiClientFactory, TransactionsApiRepository {
	public func history(
		transactionHistoryRequest: TransactionHistoryRequest,
		completion: @escaping ApiCompletion<TransactionHistoryResponse>
	) {
		// TODO: Implement me
	}
}
