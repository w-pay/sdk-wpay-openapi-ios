import UIKit
import VillageWalletSDK

public class OpenApiCardsApiRepository: OpenApiClientFactory, CardsApiRepository {
	public func initCapture(
		initiateCardCaptureRequest: InitiateCardCaptureRequest,
		completion: @escaping ApiCompletion<InitiateCardCaptureResponse>
	) {
		// TODO: Implement me
	}

	public func guestInitCapture(
		initiateCardCaptureRequest: InitiateCardCaptureRequest,
		completion: @escaping ApiCompletion<InitiateCardCaptureResponse>
	) {
		// TODO: Implement me
	}
}
