import UIKit
import VillageWalletSDK

public class OpenApiPaymentAgreementApiRepository: OpenApiClientFactory, PaymentAgreementApiRepository {
	public func create(
		paymentAgreementRequest: DigitalPayCreatePaymentAgreementRequest,
		completion: @escaping ApiCompletion<DigitalPayPaymentAgreementResponse>
	) {
		// TODO: Implement me
	}

	public func update(
		paymentToken: String,
		paymentAgreementRequest: DigitalPayUpdatePaymentAgreementRequest,
		completion: @escaping ApiCompletion<DigitalPayPaymentAgreementResponse>
	) {
		// TODO: Implement me
	}

	public func charge(
		chargeRequest: DigitalPayChargePaymentAgreementRequest,
		completion: @escaping ApiCompletion<DigitalPayPaymentAgreementResponse>
	) {
		// TODO: Implement me
	}

	public func delete(paymentToken: String, completion: @escaping ApiCompletion<Void>) {
		// TODO: Implement me
	}
}
