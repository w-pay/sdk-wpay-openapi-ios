import UIKit
import VillageWalletSDK

public class OpenApiGiftingRepository: OpenApiClientFactory, GiftingRepository {
	public func getProductById(
		productId: String,
		completion: @escaping ApiCompletion<DigitalPayGiftingProductDetail>
	) {
		let api = createGiftingApi()

		api.giftingProductsProductIdGet(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			xJWSSignature: "",
			productId: productId,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiDigitalPayGiftingProductDetail(
					data: results!.data
				)))
			})
	}

	public func listProducts(
		page: Int,
		pageSize: Int,
		lastUpdateDateTime: Date,
		completion: @escaping ApiCompletion<[DigitalPayGiftingProduct]>
	) {
		let api = createGiftingApi()

		api.giftingProductsGet(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			xJWSSignature: "",
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			lastUpdateDateTime: lastUpdateDateTime,
			pageSize: pageSize as NSNumber,
			page: page as NSNumber,
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(
					results!.data.products.map {
						it in OpenApiDigitalPayGiftingProduct(product: it as! OAIGiftingProduct)
					}
				))
			})
	}

	public func getQuote(
		quoteRequest: DigitalPayGiftingQuoteRequest,
		completion: @escaping ApiCompletion<DigitalPayGiftingQuoteResponse>
	) {
		let api = createGiftingApi()

		let body = OAIGiftingProductQuoteRequest()
		body.orderItems = quoteRequest.orderItems.map({ item in
			OAIGiftingProductOrderItem.fromGiftingProductOrderItem(item)!
		})

		api.giftingProductsQuotePost(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			xJWSSignature: "",
			giftingProductQuoteRequest: body,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiDigitalPayGiftingQuoteResponse(
					data: results!.data
				)))
			})
	}

	public func order(
		orderRequest: DigitalPayGiftingOrderRequest,
		completion: @escaping ApiCompletion<DigitalPayGiftingOrderResponse>
	) {
		let api = createGiftingApi()

		let body = OAIGiftingProductOrderRequest()
		body.data = OAIGiftingProductOrderRequestData()
		body.data.billingContact =
			OAIGiftingProductOrderRequestDataBillingContact.fromGiftingBillingContact(orderRequest.billingContact)
		body.data.discountAmount = orderRequest.discountAmount as NSNumber
		body.data.instrumentId = orderRequest.instrumentId
		body.data.referenceId = orderRequest.referenceId
		body.data.subTotalAmount = orderRequest.subTotalAmount as NSNumber
		body.data.totalOrderAmount = orderRequest.totalOrderAmount as NSNumber
		body.data.orderItems = orderRequest.orderItems.map({ it in
			OAIGiftingProductOrderItem.fromGiftingProductOrderItem(it)!
		})

		api.giftingProductsOrderPost(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			xJWSSignature: "",
			giftingProductOrderRequest: body,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiDigitalPayGiftingOrderResponse(
					data: results!.data
				)))
			})
	}
}

extension OAIGiftingProductOrderRequestDataBillingContact {
	static func fromGiftingBillingContact(
		_ contact: GiftingBillingContact?
	) -> OAIGiftingProductOrderRequestDataBillingContact? {
		guard let theContact = contact else { return nil }

		let billingContact = OAIGiftingProductOrderRequestDataBillingContact()
		billingContact.countryCode = theContact.countryCode
		billingContact.email = theContact.email
		billingContact.extendedAddress = theContact.extendedAddress
		billingContact.firstName = theContact.firstName
		billingContact.lastName = theContact.lastName
		billingContact.mobileNumber = theContact.mobileNumber
		billingContact.postalCode = theContact.postalCode
		billingContact.stateOrTerritory = theContact.stateOrTerritory
		billingContact.streetAddress = theContact.streetAddress
		billingContact.suburb = theContact.suburb

		return billingContact
	}
}