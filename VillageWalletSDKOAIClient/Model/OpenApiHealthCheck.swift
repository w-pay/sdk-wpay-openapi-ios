import UIKit
import VillageWalletSDK

class OpenApiHealthCheck: HealthCheck {
	private let check: OAIHealthCheckResultData

	init(check: OAIHealthCheckResultData) {
		self.check = check
	}

	func result() -> HealthCheckStatus? {
		HealthCheckStatus.valueOf(value: check.healthCheck)
	}
}
