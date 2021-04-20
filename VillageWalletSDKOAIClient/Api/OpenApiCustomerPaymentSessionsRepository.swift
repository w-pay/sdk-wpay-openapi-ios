import UIKit
import VillageWalletSDK

public class OpenApiCustomerPaymentSessionsRepository: OpenApiClientFactory, CustomerPaymentSessionsRepository {
	public func getBy(
		paymentSessionId: String,
		completion: @escaping ApiCompletion<PaymentSession>
	) {
		let api = createCustomerApi()

		api.getCustomerPaymentSession(
			withXWalletID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			paymentSessionId: paymentSessionId,
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(
					OpenApiPaymentSession(session: results!.data))
				)
			})
	}

	public func getBy(
		qrCodeId: String,
		completion: @escaping ApiCompletion<PaymentSession>
	) {
		let api = createCustomerApi()

		api.getCustomerPaymentSessionByQRCodeId(
			withXWalletID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			qrId: qrCodeId,
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiPaymentSession(session: results!.data)))
			})
	}

	public func update(
		paymentSessionId: String,
		session: CustomerUpdatePaymentSessionRequest,
		completion: @escaping ApiCompletion<Void>
	) {
		let api = createCustomerApi()

		let body = OAIUpdatePaymentSessionRequest()
		body.data = OAICustomerPaymentSessionPaymentSessionIdData()
		body.data.customerInfo = toDynamicPayload(payload: session.customerInfo)

		api.customerUpdatePaymentSession(
			withXWalletID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			paymentSessionId: paymentSessionId,
			updatePaymentSessionRequest: body,
			completionHandler: { error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(Void()))
			})
	}

	public func delete(
		paymentSessionId: String,
		completion: @escaping ApiCompletion<Void>
	) {
		let api = createCustomerApi()

		api.deleteCustomerPaymentSession(
			withXWalletID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			paymentSessionId: paymentSessionId,
			completionHandler: { error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(Void()))
			}
		)
	}

	public func preApprove(
		paymentSessionId: String,
		primaryInstrument: String?,
		secondaryInstruments: [SecondaryPaymentInstrument]?,
		clientReference: String?,
		preferences: PaymentPreferences?,
		challengeResponses: [ChallengeResponse]?,
		completion: @escaping ApiCompletion<Void>
	) {
		// TODO: Update me
		let api = createCustomerApi()

		let body = OAICustomerPaymentDetails1()
		body.data = OAICustomerPaymentsPaymentRequestIdData()
		body.data.primaryInstrumentId = primaryInstrument
		body.data.secondaryInstruments = secondaryInstruments?.map(toSecondaryInstrument) ?? []
		body.data.clientReference = clientReference

		body.meta = OAIMetaChallenge()
		body.meta.challengeResponses = challengeResponses?.map(toChallengeResponse) ?? []

		api.preApprovePaymentSession(
			withXWalletID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			paymentSessionId: paymentSessionId,
			customerPaymentDetails1: body,
			xEverydayPayWallet: getEverydayPayHeader(client: api.apiClient),
			completionHandler: { error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(Void()))
			}
		)
	}
}
