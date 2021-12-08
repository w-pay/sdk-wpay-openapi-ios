import UIKit
import VillageWalletSDK

public class OpenApiVillageCustomerApiRepository: VillageCustomerApiRepository {
	public static let factory: CustomerApiRepositoryFactory = ({
		(
			options: VillageCustomerOptions,
			headers: RequestHeadersFactory,
			authenticator: AnyApiAuthenticator<HasAccessToken>
		) -> VillageCustomerApiRepository in
		OpenApiVillageCustomerApiRepository(
			requestHeadersFactory: headers,
			options: options,
			authenticator: authenticator
		)
	})

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
	public let authenticator: AnyApiAuthenticator<HasAccessToken>

	public init(
		requestHeadersFactory: RequestHeadersFactory,
		options: VillageCustomerOptions,
		authenticator: AnyApiAuthenticator<HasAccessToken>,
		clientOptions: ClientOptions = ClientOptions()
	) {
		self.options = options
		self.authenticator = authenticator

		admin = OpenApiAdministrationApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		dp = OpenApiDigitalPayRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		instruments = OpenApiPaymentInstrumentsRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		paymentAgreements = OpenApiCustomerPaymentAgreementsApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		paymentRequests = OpenApiCustomerPaymentRequestsRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		paymentSessions = OpenApiCustomerPaymentSessionsRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		preferences = OpenApiCustomerPreferencesRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		termsAndConditions = OpenApiCustomerTermsAndConditionsApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		transactions = OpenApiCustomerTransactionsRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)
	}
}

func toSecondaryInstrument(
	instrument: SecondaryPaymentInstrument
) -> OAICustomerPaymentDetailsDataSecondaryInstruments {
	let oaiInstrument = OAICustomerPaymentDetailsDataSecondaryInstruments()
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
