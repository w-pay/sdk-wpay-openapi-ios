import UIKit
import VillageWalletSDK

public class OpenApiQRCodeRepository: OpenApiClientFactory, QRCodeRepository {
	public func createPaymentRequestQRCode(
		details: NewPaymentRequestQRCode, 
		completion: @escaping ApiCompletion<QRCode>
	) {
		let api = createMerchantApi()

		let body = OAIPaymentQRCodeDetails()
		body.data = OAIInstoreMerchantQrData()
		body.data.referenceId = details.referenceId
		body.data.timeToLive = details.timeToLive as NSNumber?

		switch(details.referenceType) {
			case QRCodePaymentReferenceType.PAYMENT_SESSION:
				body.data.referenceType = "SESSION"

			case QRCodePaymentReferenceType.PAYMENT_REQUEST:
				body.data.referenceType = "REQUEST"
		}

		body.meta = OAIMeta()

		api.createPaymentRequestQRCode(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			paymentQRCodeDetails: body,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiQRCode(code: result!.data)))
			})
	}

	public func getPaymentRequestQRCodeContentBy(
		qrCodeId: String,
		completion: @escaping ApiCompletion<QRCode>
	) {
		let api = createMerchantApi()

		api.getPaymentRequestQRCodeContent(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			qrId: qrCodeId,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
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
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			qrId: qrCodeId,
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
}