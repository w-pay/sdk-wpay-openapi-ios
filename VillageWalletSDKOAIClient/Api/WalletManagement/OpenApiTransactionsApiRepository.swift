import UIKit
import VillageWalletSDK

public class OpenApiTransactionsApiRepository: OpenApiClientFactory, TransactionsApiRepository {
	public func history(
		transactionHistoryRequest: TransactionHistoryRequest,
		completion: @escaping ApiCompletion<TransactionHistoryResponse>
	) {
		let api = createWalletManagementApi()
		let body = OAITransactionHistoryRequest()
		body.transactionTypes = transactionHistoryRequest.transactionTypes.map { it in it.rawValue }
		body.paymentInstrumentIds = transactionHistoryRequest.paymentInstrumentIds
		body.clientReference = transactionHistoryRequest.clientReference
		body.transactionRef = transactionHistoryRequest.transactionRef
		body.orderNumber = transactionHistoryRequest.orderNumber
		body.startDate = transactionHistoryRequest.startDate
		body.endDate = transactionHistoryRequest.endDate
		body.maxRecords = transactionHistoryRequest.maxRecords as NSNumber

		api.transactionsPost(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			body: body,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			xEverydayPayWallet: getDefaultHeader(client: api.apiClient, name: X_EVERYDAY_PAY_WALLET),
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiTransactionHistoryResponse(
					response: results!
				)))
			}
		)
	}
}
