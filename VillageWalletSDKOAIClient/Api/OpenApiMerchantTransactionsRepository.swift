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
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
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

				completion(.success(OpenApiMerchantTransactionDetails(
					details: result!.data
				)))
			})
	}
}