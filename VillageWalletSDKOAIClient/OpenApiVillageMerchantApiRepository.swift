import UIKit
import VillageWalletSDK

public class OpenApiVillageMerchantApiRepository: VillageMerchantApiRepository {
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
	
	public init(
		requestHeadersFactory: RequestHeadersFactory,
		options: VillageMerchantOptions
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

		payments = OpenApiMerchantPaymentsRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		paymentAgreements = OpenApiMerchantPaymentAgreementsRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		paymentSession = OpenApiMerchantPaymentSessionsRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		preferences = OpenApiMerchantPreferencesRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		qr = OpenApiQRCodeRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		schemas = OpenApiSchemasRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		transactions = OpenApiMerchantTransactionsRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)
	}
}
