import UIKit
import VillageWalletSDK

public class OpenApiCustomerPaymentRequestsRepository: OpenApiClientFactory, CustomerPaymentRequestsRepository {
	public func getBy(
		paymentRequestId: String,
		completion: @escaping ApiCompletion<CustomerPaymentRequest>
	) {
		let api = createCustomerApi()

		api.getCustomerPaymentRequestDetailsByPaymentId(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			paymentRequestId: paymentRequestId,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
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
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			qrId: qrCodeId,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
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
		body.data = OAIInstoreCustomerPaymentsPaymentRequestIdData()
		body.data.primaryInstrumentId = primaryInstrument
		body.data.secondaryInstruments = secondaryInstruments?.map(toSecondaryInstrument) ?? []
		body.data.clientReference = clientReference

		body.meta = OAIMetaChallenge()
		body.meta.challengeResponses = challengeResponses?.map(toChallengeResponse) ?? []

		api.makeCustomerPayment(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			paymentRequestId: paymentRequestId,
			customerPaymentDetails: body,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
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
