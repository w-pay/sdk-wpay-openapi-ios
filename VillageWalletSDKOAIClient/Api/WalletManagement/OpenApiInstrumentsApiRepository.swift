import UIKit
import VillageWalletSDK

public class OpenApiInstrumentsApiRepository: OpenApiClientFactory, InstrumentsApiRepository {
	public func importInstrument(
		importPaymentInstrumentsRequest: ImportPaymentInstrumentsRequest,
		completion: @escaping ApiCompletion<ImportPaymentInstrumentsResponse>
	) {
		// TODO: Implement me
	}

	public func verify(
		verifyPaymentInstrumentsRequest: VerifyPaymentInstrumentsRequest,
		completion: @escaping ApiCompletion<VerifyPaymentInstrumentsSuccessResponse>
	) {
		// TODO: Implement me
	}

	public func getList(completion: @escaping ApiCompletion<ListPaymentInstrumentsResponse>) {
		// TODO: Implement me
	}

	public func postList(
		listPaymentInstrumentsRequest: ListPaymentInstrumentsRequest,
		completion: @escaping ApiCompletion<ListPaymentInstrumentsResponse>
	) {
		// TODO: Implement me
	}

	public func delete(
		paymentInstrumentId: String,
		completion: @escaping ApiCompletion<[String: Any]>
	) {
		// TODO: Implement me
	}
}
