import UIKit
import VillageWalletSDK

public class OpenApiCustomerPaymentAgreementsApiRepository
 : OpenApiClientFactory, CustomerPaymentAgreementsApiRepository
{
	public func list(completion: @escaping ApiCompletion<PaymentAgreements>) {
		// TODO: Implement me
	}

	public func getById(
		paymentToken: String,
		completion: @escaping ApiCompletion<PaymentAgreement>
	) {
		// TODO: Implement me
	}

	public func create(
		paymentAgreement: CreatePaymentAgreementRequest,
		completion: @escaping ApiCompletion<PaymentAgreement>
	) {
		// TODO: Implement me
	}

	public func update(
		paymentToken: String,
		paymentAgreement: UpdatePaymentAgreementRequest,
		completion: @escaping ApiCompletion<PaymentAgreement>
	) {
		// TODO: Implement me
	}
}
