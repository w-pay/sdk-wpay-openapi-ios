import UIKit
import VillageWalletSDK

public class OpenApiCustomerPaymentAgreementsApiRepository
 : OpenApiClientFactory, CustomerPaymentAgreementsApiRepository
{
	public func list(completion: @escaping ApiCompletion<PaymentAgreements>) {
		let api = createCustomerApi()

		api.getPaymentAgreementList(
			withXWalletID: getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(
					OpenApiPaymentAgreements(agreements: results!.data.paymentAgreements as! [OAIPaymentAgreement]))
				)
			})
	}

	public func getById(
		paymentToken: String,
		completion: @escaping ApiCompletion<PaymentAgreement>
	) {
		let api = createCustomerApi()

		api.getPaymentAgreement(
			withXWalletID: getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			paymentToken: paymentToken,
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiPaymentAgreement(agreement: results!.data)))
			})
	}

	public func create(
		paymentAgreement: CreatePaymentAgreementRequest,
		completion: @escaping ApiCompletion<PaymentAgreement>
	) {
		let api = createCustomerApi()

		let body = OAICustomerCreatePaymentAgreementRequest()
		body.data = OAIInstoreCustomerPaymentsAgreementsData()
		body.data.clientReference = paymentAgreement.clientReference
		body.data.customerRef = paymentAgreement.customerRef
		body.data.orderNumber = paymentAgreement.orderNumber
		body.data.billingAddress = fromBillingAddress(paymentAgreement.billingAddress)
		body.data.paymentAgreement = fromPaymentAgreement(paymentAgreement.paymentAgreement)

		api.createCustomerPaymentAgreement(
			withXWalletID: getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			customerCreatePaymentAgreementRequest: body,
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiPaymentAgreement(agreement: results!.data)))
			})
	}

	public func update(
		paymentToken: String,
		paymentAgreement: UpdatePaymentAgreementRequest,
		completion: @escaping ApiCompletion<PaymentAgreement>
	) {
		let api = createCustomerApi()

		let body = OAICustomerUpdatePaymentAgreementRequest()
		body.data = OAIInstoreCustomerPaymentsAgreementsPaymentTokenData()
		body.data.clientReference = paymentAgreement.clientReference
		body.data.customerRef = paymentAgreement.customerRef
		body.data.billingAddress = fromBillingAddress(paymentAgreement.billingAddress)
		body.data.paymentAgreement = fromPaymentAgreement(paymentAgreement.paymentAgreement)

		api.updateCustomerPaymentAgreement(
			withXWalletID: getDefaultHeader(client: api.apiClient, name: X_WALLET_ID),
			paymentToken: paymentToken,
			customerUpdatePaymentAgreementRequest: body,
			completionHandler: { results, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiPaymentAgreement(agreement: results!.data)))
			}
		)
	}
}

func fromBillingAddress(_ address: PaymentAgreementBillingAddress?) -> OAIBillingAddress? {
	guard let theAddress = address else {
		return nil
	}

	let billingAddress = OAIBillingAddress()

	billingAddress.firstName = theAddress.firstName
	billingAddress.lastName = theAddress.lastName
	billingAddress.email = theAddress.email
	billingAddress.company = theAddress.company
	billingAddress.extendedAddress = theAddress.extendedAddress
	billingAddress.streetAddress = theAddress.streetAddress
	billingAddress.suburb = theAddress.suburb
	billingAddress.stateOrTerritory = theAddress.stateOrTerritory
	billingAddress.postalCode = theAddress.postalCode
	billingAddress.countryCode = theAddress.countryCode

	return billingAddress
}
