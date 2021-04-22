import UIKit
import VillageWalletSDK

public class OpenApiPaymentApiRepository: OpenApiClientFactory, PaymentApiRepository {
	public func pay(
		paymentRequest: DigitalPayPaymentRequest,
		completion: @escaping ApiCompletion<DigitalPayPaymentResponse>
	) {
		// TODO: Implement me
	}

	public func guestPayment(
		paymentRequest: DigitalPayPaymentRequest,
		completion: @escaping ApiCompletion<DigitalPayPaymentResponse>
	) {
		// TODO: Implement me
	}

	public func complete(
		completionRequest: DigitalPayCompletionRequest,
		completion: @escaping ApiCompletion<DigitalPayCompletionResponse>
	) {
		// TODO: Implement me
	}

	public func voidPayment(
		voidRequest: DigitalPayVoidRequest,
		completion: @escaping ApiCompletion<DigitalPayVoidResponse>
	) {
		// TODO: Implement me
	}

	public func refund(
		refundRequest: DigitalPayRefundRequest,
		completion: @escaping ApiCompletion<DigitalPayRefundResponse>
	) {
		// TODO: Implement me
	}
}
