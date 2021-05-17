import UIKit
import VillageWalletSDK

public class OpenApiGiftcardsApiRepository: OpenApiClientFactory, GiftcardsApiRepository {
	public func tokenize(
		tokenizeGiftcardRequest: TokenizeGiftcardRequest,
		completion: @escaping ApiCompletion<TokenizeGiftcardResponse>
	) {
		let api = createWalletManagementApi()
		let body = OAITokenizeGiftcardRequest()
		body.cardNumber = tokenizeGiftcardRequest.cardNumber
		body.pinCode = tokenizeGiftcardRequest.pinCode

		if let primary = tokenizeGiftcardRequest.primary {
			body.primary = NSNumber(value: primary)
		}

		if let save = tokenizeGiftcardRequest.save {
			body.primary = NSNumber(value: save)
		}

		api.giftcardsTokenizePost(
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

				completion(.success(OpenApiTokenizeGiftcardResponse(
					response: results!
				)))
			}
		)
	}

	public func guestTokenize(
		tokenizeGiftcardRequest: TokenizeGiftcardRequest,
		completion: @escaping ApiCompletion<TokenizeGiftcardResponse>
	) {
		let api = createWalletManagementApi()
		let body = OAIGuestTokenizeGiftcardRequest()
		body.cardNumber = tokenizeGiftcardRequest.cardNumber
		body.pinCode = tokenizeGiftcardRequest.pinCode

		api.guestGiftcardsTokenizePost(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			body: body,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiTokenizeGiftcardResponse(
					response: results!
				)))
			}
		)
	}

	public func balance(
		giftcardsBalanceRequest: GiftcardsBalanceRequest,
		completion: @escaping ApiCompletion<GiftcardsBalanceResponse>
	) {
		let api = createWalletManagementApi()
		let body = OAIGiftcardsBalanceRequest()
		body.giftCards = giftcardsBalanceRequest.giftCards.map { card in
			let giftCard = OAIGiftcardsBalanceRequestGiftCards()
			giftCard.cardNumber = card.cardNumber
			giftCard.pinCode = card.pinCode

			return giftCard
		}

		body.giftCardInstruments = giftcardsBalanceRequest.giftCardInstruments.map { instrument in
			let giftCard = OAIGiftcardsBalanceRequestGiftCardInstruments()
			giftCard.paymentInstrumentId = instrument.paymentInstrumentId

			return giftCard
		}

		api.giftcardsBalancePost(
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

				completion(.success(OpenApiGiftcardsBalanceResponse(
					response: results!
				)))
			}
		)
	}
}
