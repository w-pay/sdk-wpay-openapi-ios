import UIKit
import VillageWalletSDK

public class OpenApiMerchantPaymentAgreementsRepository
	: OpenApiClientFactory, MerchantPaymentAgreementsRepository
{
	public func charge(
		paymentToken: String,
		chargePaymentAgreementRequest: ChargePaymentAgreementRequest,
		completion: @escaping ApiCompletion<DigitalPayPaymentAgreementResponse>
	) {
		// TODO: Implement me
	}

	public func delete(paymentToken: String, completion: @escaping ApiCompletion<Void>) {
		// TODO: Implement me
	}
}
