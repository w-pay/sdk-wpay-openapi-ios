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
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
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
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			transactionId: transactionId,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
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
