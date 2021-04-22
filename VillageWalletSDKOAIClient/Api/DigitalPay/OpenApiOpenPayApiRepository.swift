import UIKit
import VillageWalletSDK

public class OpenApiOpenPayApiRepository: OpenApiClientFactory, OpenPayApiRepository {
	public func pay(
		paymentRequest: OpenPayPaymentRequest,
		completion: @escaping ApiCompletion<OpenPayPaymentResponse>
	) {
		// TODO: Implement me
	}

	public func complete(
		completionRequest: OpenPayCompletionRequest,
		completion: @escaping ApiCompletion<OpenPayCompletionResponse>
	) {
		// TODO: Implement me
	}

	public func voidPayment(
		voidRequest: OpenPayVoidRequest,
		completion: @escaping ApiCompletion<OpenPayVoidResponse>
	) {
		// TODO: Implement me
	}

	public func refund(
		refundRequest: OpenPayRefundRequest,
		completion: @escaping ApiCompletion<OpenPayRefundResponse>
	) {
		// TODO: Implement me
	}
}
