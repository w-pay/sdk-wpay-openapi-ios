import UIKit
import VillageWalletSDK

public class OpenApiQRCodeRepository: OpenApiClientFactory, QRCodeRepository {
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
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_MERCHANT_ID),
			paymentQRCodeDetails: body,
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
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_MERCHANT_ID),
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
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_MERCHANT_ID),
			qrId: qrCodeId,
			completionHandler: { error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(Void()))
			})
	}
}