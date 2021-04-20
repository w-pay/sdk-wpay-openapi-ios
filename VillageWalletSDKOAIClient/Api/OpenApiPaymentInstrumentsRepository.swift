import UIKit
import VillageWalletSDK

public class OpenApiPaymentInstrumentsRepository: OpenApiClientFactory, PaymentInstrumentsRepository {
	public func getByToken(
		paymentToken: String,
		publicKey: String?,
		completion: @escaping ApiCompletion<IndividualPaymentInstrument>
	) {
		// TODO: Implement me.
	}

	public func list(
		completion: @escaping ApiCompletion<WalletContents>
	) {
		let api = createCustomerApi()

		api.getCustomerPaymentInstruments(
			withXWalletID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			xEverydayPayWallet: getEverydayPayHeader(client: api.apiClient),
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
			withXWalletID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			paymentInstrumentId: instrument,
			xEverydayPayWallet: getEverydayPayHeader(client: api.apiClient),
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
		body.data = OAICustomerInstrumentsData()
		body.data.clientReference = instrument.clientReference

		api.initiatePaymentInstrumentAddition(
			withXWalletID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			instrumentAdditionDetails: body,
			xEverydayPayWallet: getEverydayPayHeader(client: api.apiClient),
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
