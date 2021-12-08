import UIKit
import VillageWalletSDK

public class OpenApiDigitalPayRepository: DigitalPayRepository {
	public let androidPay: AndroidPayApiRepository
	public let applePay: ApplePayApiRepository
	public let cards: CardsApiRepository
	public let giftcards: GiftcardsApiRepository
	public let gifting: GiftingRepository
	public let googlePay: GooglePayApiRepository
	public let instruments: InstrumentsApiRepository
	public let merchants: MerchantsApiRepository
	public let openPay: OpenPayApiRepository
	public let paymentAgreements: PaymentAgreementApiRepository
	public let payments: PaymentApiRepository
	public let paypal: PayPalApiRepository
	public let transactions: TransactionsApiRepository
	public let wallet: WalletApiRepository

	public init(
		requestHeadersFactory: RequestHeadersFactory,
		options: VillageOptions,
		clientOptions: ClientOptions = ClientOptions()
	) {
		androidPay = OpenApiAndroidPayApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		applePay = OpenApiApplePayApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		cards = OpenApiCardsApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		giftcards = OpenApiGiftcardsApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		gifting = OpenApiGiftingRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		googlePay = OpenApiGooglePayApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		instruments = OpenApiInstrumentsApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		merchants = OpenApiMerchantsApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		openPay = OpenApiOpenPayApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		paymentAgreements = OpenApiPaymentAgreementApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		payments = OpenApiPaymentApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		paypal = OpenApiPayPalApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		transactions = OpenApiTransactionsApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)

		wallet = OpenApiWalletApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options,
			clientOptions: clientOptions
		)
	}
}