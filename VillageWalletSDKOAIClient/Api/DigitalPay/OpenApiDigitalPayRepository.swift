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

	public init(requestHeadersFactory: RequestHeadersFactory, options: VillageOptions) {
		androidPay = OpenApiAndroidPayApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		applePay = OpenApiApplePayApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		cards = OpenApiCardsApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		giftcards = OpenApiGiftcardsApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		gifting = OpenApiGiftingRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		googlePay = OpenApiGooglePayApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		instruments = OpenApiInstrumentsApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		merchants = OpenApiMerchantsApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		openPay = OpenApiOpenPayApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		paymentAgreements = OpenApiPaymentAgreementApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		payments = OpenApiPaymentApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		paypal = OpenApiPayPalApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		transactions = OpenApiTransactionsApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)

		wallet = OpenApiWalletApiRepository(
			requestHeadersFactory: requestHeadersFactory,
			options: options
		)
	}
}