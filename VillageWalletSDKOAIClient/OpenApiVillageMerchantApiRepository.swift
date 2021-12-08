import UIKit
import VillageWalletSDK

public class OpenApiVillageMerchantApiRepository: VillageMerchantApiRepository {
	public static let factory: MerchantApiRepositoryFactory = ({
		(
			options: VillageMerchantOptions,
			headers: RequestHeadersFactory,
			authenticator: AnyApiAuthenticator<HasAccessToken>
		) -> VillageMerchantApiRepository in
		OpenApiVillageMerchantApiRepository(
			requestHeadersFactory: headers,
			options: options,
			authenticator: authenticator
		)
	})

	public let admin: AdministrationApiRepository
	public let dp: DigitalPayRepository
	public let payments: MerchantPaymentsRepository
	public let paymentAgreements: MerchantPaymentAgreementsRepository
	public let paymentSession: MerchantPaymentSessionsRepository
	public let preferences: MerchantPreferencesRepository
	public let qr: QRCodeRepository
	public let schemas: SchemasRepository
	public let transactions: MerchantTransactionsRepository
	public let options: VillageMerchantOptions
	public let authenticator: AnyApiAuthenticator<HasAccessToken>
	
	public init(
		requestHeadersFactory: RequestHeadersFactory,
		options: VillageMerchantOptions,
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

		payments = OpenApiMerchantPaymentsRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		paymentAgreements = OpenApiMerchantPaymentAgreementsRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		paymentSession = OpenApiMerchantPaymentSessionsRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		preferences = OpenApiMerchantPreferencesRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		qr = OpenApiQRCodeRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		schemas = OpenApiSchemasRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		transactions = OpenApiMerchantTransactionsRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)
	}
}
