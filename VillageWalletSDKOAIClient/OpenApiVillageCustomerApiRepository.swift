import UIKit
import VillageWalletSDK

public class OpenApiVillageCustomerApiRepository: OpenApiClientFactory, VillageCustomerApiRepository {
	override public init(requestHeadersFactory: RequestHeadersFactory, contextRoot: String) {
		super.init(requestHeadersFactory: requestHeadersFactory, contextRoot: contextRoot)
	}

	public func retrieveTransactions(
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

	public func retrieveTransactionDetails(
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

	public func retrievePaymentRequestDetailsBy(
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

	public func retrievePaymentRequestDetailsBy(
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

	public func retrievePaymentInstruments(
		wallet: Wallet,
		completion: @escaping ApiCompletion<AllPaymentInstruments>
	) {
		let api = createCustomerApi()

		api.getCustomerPaymentInstruments(
			withXWalletID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			xEverdayPayWallet: (wallet == Wallet.EVERYDAY_PAY) as NSNumber,
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiAllPaymentInstruments(
					creditCards: results!.data.creditCards as! [OAICreditCard],
					giftCards: results!.data.giftCards as! [OAIGiftCard],
					everydayPay: results!.data.everydayPay)))
		})
	}

	public func deletePaymentInstrument(
		instrument: PaymentInstrumentIdentifier,
		completion: @escaping ApiCompletion<Void>
	) {
		let api = createCustomerApi()

		api.deletePaymentInstrument(
			withXWalletID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			paymentInstrumentId: instrument.paymentInstrumentId,
			xEverdayPayWallet: (instrument.wallet == Wallet.EVERYDAY_PAY) as NSNumber,
			completionHandler: { error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(Void()))
			}
		)
	}

	public func makePayment(
		paymentRequestId: String,
		primaryInstrument: PaymentInstrumentIdentifier,
		secondaryInstruments: [SecondaryPaymentInstrument]?,
		clientReference: String?,
		challengeResponses: [ChallengeResponse]?,
		completion: @escaping ApiCompletion<CustomerTransactionSummary>
	) {
		let api = createCustomerApi()

		let body = OAICustomerPaymentDetails()
		body.data = OAICustomerPaymentsPaymentRequestIdData()
		body.data.primaryInstrumentId = primaryInstrument.paymentInstrumentId
		body.data.secondaryInstruments = secondaryInstruments?.map(toSecondaryInstrument) ?? []
		body.data.clientReference = clientReference

		body.meta = OAIMetaChallenge()
		body.meta.challengeResponses = challengeResponses?.map(toChallengeResponse) ?? []

		api.makeCustomerPayment(
			withXWalletID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			paymentRequestId: paymentRequestId,
			customerPaymentDetails: body,
			xEverdayPayWallet: (primaryInstrument.wallet == Wallet.EVERYDAY_PAY) as NSNumber,
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(
					OpenApiCustomerTransactionSummary(summary: results!.data))
				)
			})
	}

	public func initiatePaymentInstrumentAddition(
		instrument: PaymentInstrumentAddition,
		completion: @escaping ApiCompletion<PaymentInstrumentAdditionResult>
	) {
		let api = createCustomerApi()

		let body = OAIInstrumentAdditionDetails()
		body.data = OAICustomerInstrumentsData()
		body.data.clientReference = instrument.clientReference

		api.initiatePaymentInstrumentAddition(
			withXWalletID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			instrumentAdditionDetails: body,
			xEverdayPayWallet: (instrument.wallet == Wallet.EVERYDAY_PAY) as NSNumber,
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(
					OpenApiPaymentInstrumentAdditionResult(result: results!.data))
				)
			})
	}

	public func retrievePreferences(completion: @escaping ApiCompletion<CustomerPreferences>) {
		let api = createCustomerApi()

		api.getCustomerPreferences(
			withXWalletID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(results!.data))
			})
	}

	public func setPreferences(
		preferences: CustomerPreferences,
		completion: @escaping ApiCompletion<Void>
	) {
		let api = createCustomerApi()

		let body = OAICustomerPreferences()
		body.data = preferences

		api.setCustomerPreferencesWithXWalletID(
			self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			customerPreferences: body,
			completionHandler: { error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(Void()))
			})
	}

	public func retrievePaymentSessionBy(
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

	public func retrievePaymentSessionBy(
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

	public func updatePaymentSession(
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

	public func checkHealth(completion: @escaping ApiCompletion<HealthCheck>) {
		let api = createAdministrationApi()

		api.checkHealth(
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiHealthCheck(check: results!.data)))
		})
	}

	public func deletePaymentSession(
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

	public func preApprovePaymentSession(
		paymentSessionId: String,
		primaryInstrument: PaymentInstrumentIdentifier,
		secondaryInstruments: [SecondaryPaymentInstrument]?,
		clientReference: String?,
		challengeResponses: [ChallengeResponse]?,
		completion: @escaping ApiCompletion<Void>
	) {
		let api = createCustomerApi()

		let body = OAICustomerPaymentDetails1()
		body.data = OAICustomerPaymentsPaymentRequestIdData()
		body.data.primaryInstrumentId = primaryInstrument.paymentInstrumentId
		body.data.secondaryInstruments = secondaryInstruments?.map(toSecondaryInstrument) ?? []
		body.data.clientReference = clientReference

		body.meta = OAIMetaChallenge()
		body.meta.challengeResponses = challengeResponses?.map(toChallengeResponse) ?? []

		api.preApprovePaymentSession(
			withXWalletID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			paymentSessionId: paymentSessionId,
			customerPaymentDetails1: body,
			xEverdayPayWallet: (primaryInstrument.wallet == Wallet.EVERYDAY_PAY) as NSNumber,
			completionHandler: { error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(Void()))
			}
		)
	}
}

func toSecondaryInstrument(
	instrument: SecondaryPaymentInstrument
) -> OAICustomerPaymentsPaymentRequestIdDataSecondaryInstruments {
	let oaiInstrument = OAICustomerPaymentsPaymentRequestIdDataSecondaryInstruments()
	oaiInstrument.instrumentId = instrument.paymentInstrumentId
	oaiInstrument.amount = NSDecimalNumber(decimal: instrument.amount)

	return oaiInstrument
}

func toChallengeResponse(
	response: ChallengeResponse
) -> OAIMetaChallengeChallengeResponses {
	let cr = OAIMetaChallengeChallengeResponses()

	cr.instrumentId = response.instrumentId
	cr.type = response.type.rawValue
	cr.token = response.token
	cr.reference = response.reference

	return cr;
}
