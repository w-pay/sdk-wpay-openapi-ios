import UIKit
import VillageWalletSDK

public class OpenApiMerchantPaymentAgreementsRepository
	: OpenApiClientFactory, MerchantPaymentAgreementsRepository
{
	public func charge(
		paymentToken: String,
		chargePaymentAgreementRequest: ChargePaymentAgreementRequest,
		fraudPayload: FraudPayload?,
		completion: @escaping ApiCompletion<DigitalPayPaymentAgreementResponse>
	) {
		let api = createMerchantApi()

		let body = OAIMerchantChargePaymentAgreementRequest()
		body.data = OAIInstoreMerchantPaymentsAgreementsPaymentTokenData()
		body.data.paymentToken = chargePaymentAgreementRequest.paymentToken
		body.data.amount = chargePaymentAgreementRequest.amount as NSNumber
		body.data.clientReference = chargePaymentAgreementRequest.clientReference
		body.data.orderNumber = chargePaymentAgreementRequest.orderNumber
		body.data.transactionType = OAITransactionType(string: chargePaymentAgreementRequest.transactionType.rawValue, error: nil)
		body.data.customerRef = chargePaymentAgreementRequest.customerRef

		body.meta = OAIMeta()
		body.meta.fraud = OAIMetaFraudPayload.fromFraudPayload(fraudPayload)

		api.chargeMerchantPaymentAgreement(
			withXMerchantID: getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			paymentToken: paymentToken,
			merchantChargePaymentAgreementRequest: body,
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiDigitalPayPaymentAgreementResponse(
					agreement: results!.data
				)))
			}
		)
	}

	public func delete(paymentToken: String, completion: @escaping ApiCompletion<Void>) {
		let api = createMerchantApi()

		api.deleteMerchantPaymentAgreement(
			withXMerchantID: getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			paymentToken: paymentToken,
			completionHandler: { error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(Void()))
			}
		)
	}
}
