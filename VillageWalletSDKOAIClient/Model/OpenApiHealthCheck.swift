import UIKit
import VillageWalletSDK

class OpenApiHealthCheck: HealthCheck {
	private let check: OAIHealthCheckResultData

	init(check: OAIHealthCheckResultData) {
		self.check = check
	}

	var result: HealthCheckStatus? {
		HealthCheckStatus(rawValue: check.healthCheck.uppercased())
	}
}
