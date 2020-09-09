import UIKit
import VillageWalletSDK

public class OpenApiVillageMerchantApiRepository: OpenApiClientFactory, VillageMerchantApiRepository {
	override public init(requestHeadersFactory: RequestHeadersFactory, contextRoot: String) {
		super.init(requestHeadersFactory: requestHeadersFactory, contextRoot: contextRoot)
	}

	public func retrieveTransactions(
		page: Int?,
		pageSize: Int?,
		endTime: Date?,
		startTime: Date?,
		completion: @escaping ApiCompletion<MerchantTransactionSummaries>
	) {
		let api = createMerchantApi()

		api.getMerchantTransactions(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			startTime: startTime,
			endTime: endTime,
			pageSize: pageSize as NSNumber?,
			page: page as NSNumber?,
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiMerchantTransactionSummaries(
					transactions: result!.data.transactions as! [OAIMerchantTransactionSummary]
				)))
			})
	}

	public func retrieveTransactionDetails(
		transactionId: String,
		completion: @escaping ApiCompletion<MerchantTransactionDetails>
	) {
		let api = createMerchantApi()

		api.getMerchantTransactionDetails(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			transactionId: transactionId,
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiMerchantTransactionDetails(
					details: result!.data
				)))
			})
	}

	public func createPaymentRequestQRCode(
		details: NewPaymentRequestQRCode,
		completion: @escaping ApiCompletion<QRCode>
	) {
		let api = createMerchantApi()

		let body = OAIPaymentQRCodeDetails()
		body.data = OAIMerchantQrData()
		body.data.referenceId = details.referenceId
		body.data.timeToLive = details.timeToLive as NSNumber?

		switch(details.referenceType) {
			case QRCodePaymentReferenceType.PAYMENT_SESSION:
				body.data.referenceType = "SESSION"

			case QRCodePaymentReferenceType.PAYMENT_REQUEST:
				body.data.referenceType = "REQUEST"
		}

		api.createPaymentRequestQRCode(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			paymentQRCodeDetails: body,
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiQRCode(code: result!.data)))
			})
	}

	public func retrievePaymentRequestBy(
		qrCodeId: String,
		completion: @escaping ApiCompletion<QRCode>
	) {
		let api = createMerchantApi()

		api.getPaymentRequestQRCodeContent(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			qrId: qrCodeId,
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiQRCode(code: result!.data)))
			})
	}

	public func cancelPaymentQRCode(
		qrCodeId: String,
		completion: @escaping ApiCompletion<Void>
	) {
		let api = createMerchantApi()

		api.cancelPaymentRequestQRCode(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			qrId: qrCodeId,
			completionHandler: { error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(Void()))
			})
	}

	public func retrievePaymentList(
		type: String?,
		page: Int?,
		pageSize: Int?,
		completion: @escaping ApiCompletion<MerchantPaymentSummaries>
	) {
		let api = createMerchantApi()

		api.getMerchantPayments(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			type: type,
			pageSize: pageSize as NSNumber?,
			page: page as NSNumber?,
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiMerchantPaymentSummaries(
					payments: result!.data.payments as! [OAIMerchantPaymentSummary]
				)))
			})
	}

	public func createNewPaymentRequest(
		paymentRequest: NewPaymentRequest,
		completion: @escaping ApiCompletion<CreatePaymentRequestResult>
	) {
		let api = createMerchantApi()

		let body = OAIMerchantPaymentRequest()
		body.data = OAIMerchantPaymentsData()
		body.data.merchantReferenceId = paymentRequest.merchantReferenceId
		body.data.grossAmount = NSDecimalNumber(decimal: paymentRequest.grossAmount)
		body.data.generateQR = paymentRequest.generateQR as NSNumber
		body.data.maxUses = paymentRequest.maxUses as NSNumber?
		body.data.timeToLivePayment = paymentRequest.timeToLivePayment as NSNumber?
		body.data.timeToLiveQR = paymentRequest.timeToLiveQR as NSNumber?
		body.data.specificWalletId = paymentRequest.specificWalletId

		if let posPayload = paymentRequest.posPayload {
			body.data.posPayload = OAIPosPayload()
			body.data.posPayload.schemaId = posPayload.schemaId
			body.data.posPayload.payload = posPayload.payload as? [String: NSObject]
		}

		if let merchantPayload = paymentRequest.merchantPayload {
			body.data.merchantPayload = OAIMerchantPayload()
			body.data.merchantPayload.schemaId = merchantPayload.schemaId
			body.data.merchantPayload.payload = merchantPayload.payload as? [String: NSObject]
		}

		if let basket = paymentRequest.basket {
			body.data.basket = OAIBasket()
			body.data.basket.items = basket.items.map { it in
				let item = OAIBasketItems()
				item.label = it.label
				item._description = it.description

				if let quantity = it.quantity {
					item.quantity = NSNumber(value: quantity)
				}

				if let unitPrice = it.unitPrice {
					item.unitPrice = NSDecimalNumber(decimal: unitPrice)
				}

				item.unitMeasure = it.unitMeasure

				if let totalPrice = it.totalPrice {
					item.totalPrice = NSDecimalNumber(decimal: totalPrice)
				}

				item.tags = it.tags

				return item
			}
		}

		api.createPaymentRequest(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			merchantPaymentRequest: body,
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiCreatePaymentRequestResult(result: result!.data)))
			})
	}

	public func retrievePaymentRequestDetails(
		paymentRequestId: String,
		completion: @escaping ApiCompletion<MerchantPaymentDetails>
	) {
		let api = createMerchantApi()

		api.getMerchantPaymentDetails(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			paymentRequestId: paymentRequestId,
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiMerchantPaymentDetails(details: result!.data)))
			})
	}

	public func deletePaymentRequest(
		paymentRequestId: String,
		completion: @escaping ApiCompletion<Void>
	) {
		let api = createMerchantApi()

		api.deleteMerchantPaymentRequest(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			paymentRequestId: paymentRequestId,
			completionHandler: { error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(Void()))
			})
	}

	public func refundTransaction(
		transactionId: String,
		refundDetails: TransactionRefundDetails,
		completion: @escaping ApiCompletion<MerchantTransactionSummary>
	) {
		let api = createMerchantApi()

		let body = OAIRefundMerchantTransactionRequest()
		body.data = OAIMerchantTransactionsTransactionIdRefundData()
		body.data.reason = refundDetails.reason

		api.refundMerchantTransaction(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			transactionId: transactionId,
			refundMerchantTransactionRequest: body,
			completionHandler: { result, error in
			guard error == nil else {
				return completion(self.extractError(error: error! as NSError))
			}

			completion(.success(OpenApiMerchantTransactionSummary(summary: result!.data)))
		})
	}

	public func retrievePreferences(completion: @escaping ApiCompletion<MerchantPreferences>) {
		let api = createMerchantApi()

		api.getMerchantPreferences(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(result!.data))
			})
	}

	public func setPreferences(
		preferences: MerchantPreferences,
		completion: @escaping ApiCompletion<Void>
	) {
		let api = createMerchantApi()

		let body = OAIMerchantPreferences()
		body.data = preferences

		api.setMerchantPreferencesWithXMerchantID(
			self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			merchantPreferences: body,
			completionHandler: { error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(Void()))
			})
	}

	public func retrieveSchemas(completion: @escaping ApiCompletion<MerchantSchemaSummaries>) {
		let api = createMerchantApi()

		api.getMerchantSchemas(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiMerchantSchemaSummaries(
					schemas: result!.data.schemas as! [OAIMerchantSchemaSummary]
				)))
			})
	}

	public func retrieveSchemaDetails(
		schemaId: String,
		completion: @escaping ApiCompletion<MerchantSchema>
	) {
		let api = createMerchantApi()

		api.getMerchantSchemaDetails(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			schemaId: schemaId,
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiMerchantSchema(schema: result!.data)))
			})
	}

	public func createSchema(
		schema: MerchantSchema,
		completion: @escaping ApiCompletion<MerchantSchemaSummary>
	) {
		let api = createMerchantApi()

		let body = OAIMerchantSchema()
		body.data = OAIMerchantSchemaData()
		body.data.schema = (schema.schema as! [String: NSObject])
		body.data.type = schema.type
		body.data._description = schema.description

		api.createMerchantSchema(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			merchantSchema: body,
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiMerchantSchemaSummary(summary: result!.data)))
			})
	}

	public func createPaymentSession(
		request: CreatePaymentSessionRequest,
		completion: @escaping ApiCompletion<CreatePaymentSessionResult>
	) {
		let api = createMerchantApi()

		let body = OAICreatePaymentSessionRequest()
		body.data = OAIMerchantPaymentSessionData()
		body.data.location = request.location
		body.data.merchantInfo = toDynamicPayload(payload: request.merchantInfo)
		body.data.generateQR = request.generateQR as NSNumber
		body.data.timeToLivePaymentSession = request.timeToLivePaymentSession as NSNumber?
		body.data.timeToLiveQR = request.timeToLiveQR as NSNumber?

		api.createPaymentSession(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			createPaymentSessionRequest: body,
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiCreatePaymentSessionResult(result: result!.data)))
			})
	}

	public func retrievePaymentSession(
		paymentSessionId: String,
		completion: @escaping ApiCompletion<PaymentSession>
	) {
		let api = createMerchantApi()

		api.getPaymentSession(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			paymentSessionId: paymentSessionId,
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiPaymentSession(session: result!.data)))
			})
	}

	public func updatePaymentSession(
		paymentSessionId: String,
		session: MerchantUpdatePaymentSessionRequest,
		completion: @escaping ApiCompletion<Void>
	) {
		let api = createMerchantApi()

		let body = OAIUpdatePaymentSessionRequest1()
		body.data = OAIMerchantPaymentSessionPaymentSessionIdData()
		body.data.paymentRequestId = session.paymentRequestId
		body.data.merchantInfo = toDynamicPayload(payload: session.merchantInfo)

		api.merchantUpdatePaymentSession(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			paymentSessionId: paymentSessionId,
			updatePaymentSessionRequest1: body,
			completionHandler: { error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(Void()))
			})
	}

	public func deletePaymentSession(
		paymentSessionId: String,
		completion: @escaping ApiCompletion<Void>
	) {
		let api = createMerchantApi()

		api.deletePaymentSession(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			paymentSessionId: paymentSessionId,
			completionHandler: { error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(Void()))
			}
		)
	}

	public func checkHealth(completion: @escaping ApiCompletion<HealthCheck>) {
		let api = createAdministrationApi()

		api.checkHealth(completionHandler: { result, error in
			guard error == nil else {
				return completion(self.extractError(error: error! as NSError))
			}

			completion(.success(OpenApiHealthCheck(check: result!.data)))
		})
	}
}
