import Foundation
import Hamcrest
import VillageWalletSDK

@testable import VillageWalletSDKOAIClient

func isHealthyService() -> Matcher<HealthCheck> {
	Matcher("A healthy service") { (item) -> Bool in
		item.result == HealthCheckStatus.SUCCESS
	}
}