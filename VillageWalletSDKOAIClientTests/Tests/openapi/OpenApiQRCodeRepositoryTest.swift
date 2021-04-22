import UIKit
import Hamcrest
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

class OpenApiQRCodeRepositoryTest: VillageApiRepositoryTest {
	private let apiFactory = OpenApiSdkFactory()
	private var api: VillageMerchantApiRepository {
		apiFactory.createMerchantApi()
	}

	func testShouldCreatePaymentRequestQRCode() {
		let promise = apiResultExpectation()
		var value: QRCode!

		api.qr.createPaymentRequestQRCode(
			details: aNewPaymentRequestQRCode(),
			completion: isSuccessfulWith{ result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, isAQrCode())
	}

	func testShouldRetrievePaymentRequestQRCodeContent() {
		let qrCodeId = "a5bbfe1a-c1b9-11ea-924f-33c96a9759eb"

		let promise = apiResultExpectation()
		var value: QRCode!

		api.qr.getPaymentRequestQRCodeContentBy(
			qrCodeId: qrCodeId,
			completion: isSuccessfulWith { result in
				value = try! result.get()

				promise.fulfill()
			}
		)

		wait(for: [promise], timeout: 2)

		assertThat(value, isAQrCode())
	}

	func testShouldCancelPaymentQRCode() {
		let qrCodeId = "a5bbfe1a-c1b9-11ea-924f-33c96a9759eb"

		let promise = apiResultExpectation()

		api.qr.cancelPaymentQRCode(
			qrCodeId: qrCodeId,
			completion: isSuccessful(promise: promise)
		)

		wait(for: [promise], timeout: 2)
	}
}
