import UIKit
import VillageWalletSDK

public class OpenApiCustomerPaymentRequestsRepository: OpenApiClientFactory, CustomerPaymentRequestsRepository {
	public func getBy(
		paymentRequestId: String,
		completion: @escaping ApiCompletion<CustomerPaymentRequest>
	) {
		let api = createCustomerApi()

		api.getCustomerPaymentRequestDetailsByPaymentId(
			withXWalletID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			paymentRequestId: paymentRequestId,
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(
					OpenApiCustomerPaymentRequest(customerPaymentDetails: results!.data))
				)
			})
	}

	public func getBy(
		qrCodeId: String,
		completion: @escaping ApiCompletion<CustomerPaymentRequest>
	) {
		let api = createCustomerApi()

		api.getCustomerPaymentRequestDetailsByQRCodeId(
			withXWalletID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			qrId: qrCodeId,
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(
					.success(OpenApiCustomerPaymentRequest(customerPaymentDetails: results!.data))
				)
			})
	}

	public func makePayment(
		paymentRequestId: String,
		primaryInstrument: String?,
		secondaryInstruments: [SecondaryPaymentInstrument]?,
		clientReference: String?,
		preferences: PaymentPreferences?,
		challengeResponses: [ChallengeResponse]?,
		completion: @escaping ApiCompletion<CustomerTransactionSummary>
	) {
		// TODO: Update me
		let api = createCustomerApi()

		let body = OAICustomerPaymentDetails()
		body.data = OAICustomerPaymentsPaymentRequestIdData()
		body.data.primaryInstrumentId = primaryInstrument
		body.data.secondaryInstruments = secondaryInstruments?.map(toSecondaryInstrument) ?? []
		body.data.clientReference = clientReference

		body.meta = OAIMetaChallenge()
		body.meta.challengeResponses = challengeResponses?.map(toChallengeResponse) ?? []

		api.makeCustomerPayment(
			withXWalletID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			paymentRequestId: paymentRequestId,
			customerPaymentDetails: body,
			xEverydayPayWallet: getEverydayPayHeader(client: api.apiClient),
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(
					OpenApiCustomerTransactionSummary(summary: results!.data))
				)
			})
	}
}
