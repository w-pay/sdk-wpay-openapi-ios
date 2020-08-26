import UIKit
import VillageWalletSDK

class OpenApiMerchantSchemaSummaries: MerchantSchemaSummaries {
	private let theSchemas: [OAIMerchantSchemaSummary]

	init(schemas: [OAIMerchantSchemaSummary]) {
		self.theSchemas = schemas
	}

	func schemas() -> [MerchantSchemaSummary] {
		theSchemas.map { it in OpenApiMerchantSchemaSummary(summary: it) }
	}
}

class OpenApiMerchantSchemaSummary: MerchantSchemaSummary {
	private let summary: OAIMerchantSchemaSummary

	init(summary: OAIMerchantSchemaSummary) {
		self.summary = summary
	}

	func schemaId() -> String {
		summary.schemaId
	}

	func type() -> String {
		summary.type
	}

	func description() -> String? {
		summary.description
	}
}

class OpenApiMerchantSchema: MerchantSchema {
	private let aSchema: OAIMerchantSchemaDetailsResultData

	init(schema: OAIMerchantSchemaDetailsResultData) {
		self.aSchema = schema
	}

	func schema() -> [String: AnyObject] {
		aSchema.schema
	}

	func type() -> String? {
		aSchema.type
	}

	func description() -> String? {
		aSchema.description
	}

	func created() -> Date? {
		aSchema.created
	}
}
