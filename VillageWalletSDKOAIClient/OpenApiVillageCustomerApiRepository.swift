import UIKit
import VillageWalletSDK

public class OpenApiVillageCustomerApiRepository: VillageCustomerApiRepository {
	public let admin: AdministrationApiRepository
	public let dp: DigitalPayRepository
	public let instruments: PaymentInstrumentsRepository
	public let paymentAgreements: CustomerPaymentAgreementsApiRepository
	public let paymentRequests: CustomerPaymentRequestsRepository
	public let paymentSessions: CustomerPaymentSessionsRepository
	public let preferences: CustomerPreferencesRepository
	public let termsAndConditions: CustomerTermsAndConditionsApiRepository
	public let transactions: CustomerTransactionsRepository
	public let options: VillageCustomerOptions

	public init(
		requestHeadersFactory: RequestHeadersFactory,
		options: VillageCustomerOptions
	) {
		self.options = options

		admin = OpenApiAdministrationApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		dp = OpenApiDigitalPayRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		instruments = OpenApiPaymentInstrumentsRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		paymentAgreements = OpenApiCustomerPaymentAgreementsApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		paymentRequests = OpenApiCustomerPaymentRequestsRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		paymentSessions = OpenApiCustomerPaymentSessionsRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		preferences = OpenApiCustomerPreferencesRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		termsAndConditions = OpenApiCustomerTermsAndConditionsApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		transactions = OpenApiCustomerTransactionsRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)
	}
}

func toSecondaryInstrument(
	instrument: SecondaryPaymentInstrument
) -> OAIInstoreCustomerPaymentsPaymentRequestIdDataSecondaryInstruments {
	let oaiInstrument = OAIInstoreCustomerPaymentsPaymentRequestIdDataSecondaryInstruments()
	oaiInstrument.instrumentId = instrument.paymentInstrumentId
	oaiInstrument.amount = NSDecimalNumber(decimal: instrument.amount)

	return oaiInstrument
}

func toChallengeResponse(
	response: ChallengeResponse
) -> OAIMetaChallengeChallengeResponses {
	let cr = OAIMetaChallengeChallengeResponses()

	cr.instrumentId = response.instrumentId
	cr.type = response.type.rawValue
	cr.token = response.token
	cr.reference = response.reference

	return cr;
}
