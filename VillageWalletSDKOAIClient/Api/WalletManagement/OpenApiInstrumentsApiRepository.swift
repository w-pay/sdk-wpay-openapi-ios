import UIKit
import VillageWalletSDK

public class OpenApiInstrumentsApiRepository: OpenApiClientFactory, InstrumentsApiRepository {
	public func importInstrument(
		importPaymentInstrumentsRequest: ImportPaymentInstrumentsRequest,
		completion: @escaping ApiCompletion<ImportPaymentInstrumentsResponse>
	) {
		let api = createWalletManagementApi()
		let body = OAIImportPaymentInstrumentsRequest()
		body.uid = importPaymentInstrumentsRequest.uid
		body.shopperId = importPaymentInstrumentsRequest.shopperId
		body.payPal = toPayPal(payPal: importPaymentInstrumentsRequest.payPal)

		if let creditCards = importPaymentInstrumentsRequest.creditCards {
			body.creditCards = creditCards.map(toCreditCard)
		}

		api.instrumentsImportPost(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			xJWSSignature: "",
			body: body,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiImportPaymentInstrumentsResponse(
					response: results!
				)))
			}
		)
	}

	public func verify(
		verifyPaymentInstrumentsRequest: VerifyPaymentInstrumentsRequest,
		completion: @escaping ApiCompletion<VerifyPaymentInstrumentsSuccessResponse>
	) {
		let api = createWalletManagementApi()
		let body = OAIVerifyPaymentInstrumentsRequest()
		body.clientReference = verifyPaymentInstrumentsRequest.clientReference
		body.paymentInstruments = verifyPaymentInstrumentsRequest.paymentInstruments.map(toPaymentInstruments)
		body.fraudPayload = toFraudPayload(fraudPayload: verifyPaymentInstrumentsRequest.fraudPayload)

		api.instrumentsVerifyPost(
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

				completion(.success(OpenApiVerifyPaymentInstrumentsSuccessResponse(
					response: results!
				)))
			}
		)
	}

	public func getList(completion: @escaping ApiCompletion<ListPaymentInstrumentsResponse>) {
		let api = createWalletManagementApi()

		api.instrumentsGet(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			xEverydayPayWallet: getDefaultHeader(client: api.apiClient, name: X_EVERYDAY_PAY_WALLET),
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiListPaymentInstrumentsResponse(
					response: results!
				)))
			}
		)
	}

	public func postList(
		listPaymentInstrumentsRequest: ListPaymentInstrumentsRequest,
		completion: @escaping ApiCompletion<ListPaymentInstrumentsResponse>
	) {
		let api = createWalletManagementApi()

		let body = OAIListPaymentInstrumentsRequest()
		body.uid = listPaymentInstrumentsRequest.uid
		body.shopperId = listPaymentInstrumentsRequest.shopperId

		api.instrumentsPost(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			body: body,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiListPaymentInstrumentsResponse(
					response: results!
				)))
			}
		)
	}

	public func delete(
		paymentInstrumentId: String,
		completion: @escaping ApiCompletion<[String: Any]>
	) {
		let api = createWalletManagementApi()

		api.instrumentsPaymentInstrumentIdDelete(
			withPaymentInstrumentId: paymentInstrumentId,
			xApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			xEverydayPayWallet: getDefaultHeader(client: api.apiClient, name: X_EVERYDAY_PAY_WALLET),
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(results as! [String: Any]))
			}
		)
	}

	func toCreditCard(creditCard: PaymentInstrumentRequestCreditCard) -> OAIImportPaymentInstrumentsRequestCreditCards {
		let instrumentCreditCard = OAIImportPaymentInstrumentsRequestCreditCards()
		instrumentCreditCard.transactionRef = creditCard.transactionRef
		instrumentCreditCard.transactionTimestamp = creditCard.transactionTimestamp
		instrumentCreditCard.orderNumber = creditCard.orderNumber
		instrumentCreditCard.bin = creditCard.bin
		instrumentCreditCard.cardSuffix = creditCard.cardSuffix
		instrumentCreditCard.amount = creditCard.amount as NSNumber

		return instrumentCreditCard
	}

	private func toPayPal(payPal: PayPalDetail?) -> OAIImportPaymentInstrumentsRequestPayPal? {
		if let details = payPal {
			let instrumentPayPal = OAIImportPaymentInstrumentsRequestPayPal()
			instrumentPayPal.customerId = details.customerId
			instrumentPayPal.payPalId = details.payPalId
			instrumentPayPal.paymentMethodToken = details.paymentMethodToken

			return instrumentPayPal
		}

		return nil
	}

	private func toFraudPayload(
		fraudPayload: FraudPayload?
	) -> OAIVerifyPaymentInstrumentsRequestFraudPayload? {
		if let payload = fraudPayload {
			let verifyPaymentInstrumentsRequestFraudPayload = OAIVerifyPaymentInstrumentsRequestFraudPayload()
			verifyPaymentInstrumentsRequestFraudPayload.provider = payload.provider
			verifyPaymentInstrumentsRequestFraudPayload.version = payload.version
			verifyPaymentInstrumentsRequestFraudPayload.format = payload.format.rawValue
			verifyPaymentInstrumentsRequestFraudPayload.message = payload.message
			verifyPaymentInstrumentsRequestFraudPayload.responseFormat = payload.responseFormat.rawValue

			return verifyPaymentInstrumentsRequestFraudPayload
		}

		return nil
	}

	private func toPaymentInstruments(
		instrument: VerifyPaymentInstrumentsRequestInstrument
	) -> OAIVerifyPaymentInstrumentsRequestPaymentInstruments {
		let i = OAIVerifyPaymentInstrumentsRequestPaymentInstruments()
		i.paymentToken = instrument.paymentToken
		i.stepUpToken = instrument.stepUpToken

		return i
	}
}
