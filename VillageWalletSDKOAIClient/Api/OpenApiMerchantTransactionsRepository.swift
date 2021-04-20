import UIKit
import VillageWalletSDK

public class OpenApiMerchantTransactionsRepository: OpenApiClientFactory, MerchantTransactionsRepository {
	public func list(
		page: Int?,
		pageSize: Int?,
		endTime: Date?,
		startTime: Date?,
		completion: @escaping ApiCompletion<MerchantTransactionSummaries>
	) {
		let api = createMerchantApi()

		api.getMerchantTransactions(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_MERCHANT_ID),
			startTime: startTime,
			endTime: endTime,
			pageSize: pageSize as NSNumber?,
			page: page as NSNumber?,
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiMerchantTransactionSummaries(
					transactions: result!.data.transactions as! [OAIMerchantTransactionSummary]
				)))
			})
	}

	public func getBy(
		transactionId: String,
		completion: @escaping ApiCompletion<MerchantTransactionDetails>
	) {
		let api = createMerchantApi()

		api.getMerchantTransactionDetails(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_MERCHANT_ID),
			transactionId: transactionId,
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiMerchantTransactionDetails(
					details: result!.data
				)))
			})
	}
}