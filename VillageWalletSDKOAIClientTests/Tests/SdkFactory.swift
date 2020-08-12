import UIKit
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

protocol SdkFactory {
	func createCustomerApi() -> VillageCustomerApiRepository

	func createMerchantApi() -> VillageMerchantApiRepository
}
