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
		fraudPayload: FraudPayload?,
		transactionType: PaymentTransactionType?,
		allowPartialSuccess: Bool?,
		completion: @escaping ApiCompletion<CustomerTransactionSummary>
	) {
		let api = createCustomerApi()

		let body = OAICustomerPaymentDetails()
		body.data = OAICustomerPaymentDetailsData()
		body.data.primaryInstrumentId = primaryInstrument
		body.data.secondaryInstruments = secondaryInstruments?.map(toSecondaryInstrument)
		body.data.clientReference = clientReference
		body.data.allowPartialSuccess = allowPartialSuccess as NSNumber?
		body.data.preferences = OAIPreferencePayments.fromPaymentPreferences(preferences)
		body.data.transactionType = OAIPaymentTransactionType.fromPaymentTransactionType(transactionType)

		body.meta = OAIMeta()
		body.meta.challengeResponses = challengeResponses?.map(toChallengeResponse) ?? []
		body.meta.fraud = OAIMetaFraudPayload.fromFraudPayload(fraudPayload)

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

	public func makeImmediatePayment(
		immediatePaymentRequest: ImmediatePaymentRequest,
		challengeResponses: [ChallengeResponse]?,
		fraudPayload: FraudPayload?,
		completion: @escaping ApiCompletion<CustomerTransactionSummary>
	) {
		let api = createCustomerApi()

		let body = OAIImmediatePaymentRequest()
		body.data = OAIImmediatePaymentRequestData()
		body.data.clientReference = immediatePaymentRequest.clientReference
		body.data.orderNumber = immediatePaymentRequest.orderNumber
		body.data.skipRollback = immediatePaymentRequest.skipRollback as NSNumber?
		body.data.allowPartialSuccess = immediatePaymentRequest.allowPartialSuccess as NSNumber?
		body.data.payments = immediatePaymentRequest.payments.map { item in
				let dto = OAIImmediatePaymentRequestDataPayments()
				dto.paymentInstrumentId = item.paymentInstrumentId
				dto.amount = item.amount as NSNumber

				return dto
		}

		body.data.posPayload = OAIPosPayload.fromPosPayload(immediatePaymentRequest.posPayload)
		body.data.merchantPayload =
			OAIMerchantPayload.fromMerchantPayload(immediatePaymentRequest.merchantPayload)
		body.data.transactionType =
			OAIPaymentTransactionType.fromPaymentTransactionType(immediatePaymentRequest.transactionType)

		body.meta = OAIMeta()
		body.meta.challengeResponses = challengeResponses?.map(toChallengeResponse) ?? []
		body.meta.fraud = OAIMetaFraudPayload.fromFraudPayload(fraudPayload)

		api.makeImmediateCustomerPayments(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			immediatePaymentRequest: body,
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
