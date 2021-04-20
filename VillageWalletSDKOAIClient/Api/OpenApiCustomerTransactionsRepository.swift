import UIKit
import VillageWalletSDK

public class OpenApiCustomerTransactionsRepository: OpenApiClientFactory, CustomerTransactionsRepository {
	public func list(
		paymentRequestId: String?,
		page: Int?,
		pageSize: Int?,
		endTime: Date?,
		startTime: Date?,
		completion: @escaping ApiCompletion<CustomerTransactionSummaries>) {
		let api = createCustomerApi()

		api.getCustomerTransactions(
			withXWalletID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			paymentRequestId: paymentRequestId,
			startTime: startTime,
			endTime: endTime,
			pageSize: pageSize as NSNumber?,
			page: page as NSNumber?,
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiCustomerTransactionSummaries(
					transactions: result!.data.transactions as! [OAICustomerTransactionSummary]
				)))
			})
	}

	public func getBy(
		transactionId: String,
		completion: @escaping ApiCompletion<CustomerTransactionDetails>
	) {
		let api = createCustomerApi()

		api.getCustomerTransactionDetails(
			withXWalletID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			transactionId: transactionId,
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiCustomerTransactionDetails(
					details: result!.data
				)))
			})
	}
}
