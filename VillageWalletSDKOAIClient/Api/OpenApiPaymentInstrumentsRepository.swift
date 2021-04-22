import UIKit
import VillageWalletSDK

public class OpenApiPaymentInstrumentsRepository: OpenApiClientFactory, PaymentInstrumentsRepository {
	public func getByToken(
		paymentToken: String,
		publicKey: String?,
		completion: @escaping ApiCompletion<IndividualPaymentInstrument>
	) {
		let api = createCustomerApi()

		api.getCustomerPaymentInstrument(
			withPaymentInstrumentId: paymentToken,
			xApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			xEverydayPayWallet: getDefaultHeader(client: api.apiClient, name: X_EVERYDAY_PAY_WALLET),
			publicKey: publicKey,
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiIndividualPaymentInstrument(instrument: results!)))
			}
		)
	}

	public func list(
		completion: @escaping ApiCompletion<WalletContents>
	) {
		let api = createCustomerApi()

		api.getCustomerPaymentInstruments(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
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

	public func delete(
		instrument: String,
		completion: @escaping ApiCompletion<Void>
	) {
		let api = createCustomerApi()

		api.deletePaymentInstrument(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			paymentInstrumentId: instrument,
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

	public func initiateAddition(
		instrument: PaymentInstrumentAddition,
		completion: @escaping ApiCompletion<PaymentInstrumentAdditionResult>
	) {
		let api = createCustomerApi()

		let body = OAIInstrumentAdditionDetails()
		body.data = OAIInstoreCustomerInstrumentsData()
		body.data.clientReference = instrument.clientReference

		api.initiatePaymentInstrumentAddition(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			instrumentAdditionDetails: body,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(
					OpenApiPaymentInstrumentAdditionResult(result: results!.data))
				)
			})
	}
}
