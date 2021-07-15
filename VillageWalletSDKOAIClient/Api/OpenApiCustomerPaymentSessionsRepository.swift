import UIKit
import VillageWalletSDK

public class OpenApiCustomerPaymentSessionsRepository: OpenApiClientFactory, CustomerPaymentSessionsRepository {
	public func getBy(
		paymentSessionId: String,
		completion: @escaping ApiCompletion<PaymentSession>
	) {
		let api = createCustomerApi()

		api.getCustomerPaymentSession(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			paymentSessionId: paymentSessionId,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
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
		body.data = OAIInstoreCustomerPaymentSessionPaymentSessionIdData()
		body.data.customerInfo = toDynamicPayload(payload: session.customerInfo)
		body.meta = [:]

		api.customerUpdatePaymentSession(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			paymentSessionId: paymentSessionId,
			updatePaymentSessionRequest: body,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
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
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			paymentSessionId: paymentSessionId,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
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
		let api = createCustomerApi()

		let body = OAICustomerPaymentDetails1()
		body.data = OAIInstoreCustomerPaymentsPaymentRequestIdData()
		body.data.primaryInstrumentId = primaryInstrument
		body.data.secondaryInstruments = secondaryInstruments?.map(toSecondaryInstrument)
		body.data.clientReference = clientReference
		body.data.preferences = OAIPreferencePayments.fromPaymentPreferences(preferences)

		body.meta = OAIMetaChallenge()
		body.meta.challengeResponses = challengeResponses?.map(toChallengeResponse) ?? []

		api.preApprovePaymentSession(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			paymentSessionId: paymentSessionId,
			customerPaymentDetails1: body,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			completionHandler: { error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(Void()))
			}
		)
	}
}
