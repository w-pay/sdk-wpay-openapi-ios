import UIKit
import VillageWalletSDK

class OpenApiMerchantSchemaSummaries: MerchantSchemaSummaries {
	private let theSchemas: [OAIMerchantSchemaSummary]

	init(schemas: [OAIMerchantSchemaSummary]) {
		self.theSchemas = schemas
	}

	var schemas: [MerchantSchemaSummary] {
		theSchemas.map { it in OpenApiMerchantSchemaSummary(summary: it) }
	}
}

class OpenApiMerchantSchemaSummary: MerchantSchemaSummary {
	private let summary: OAIMerchantSchemaSummary

	init(summary: OAIMerchantSchemaSummary) {
		self.summary = summary
	}

	var schemaId: String {
		summary.schemaId
	}

	var type: String {
		summary.type
	}

	var description: String? {
		summary.description
	}
}

class OpenApiMerchantSchema: MerchantSchema {
	private let aSchema: OAIMerchantSchemaDetailsResultData

	init(schema: OAIMerchantSchemaDetailsResultData) {
		self.aSchema = schema
	}

	var schema: [String: AnyObject] {
		aSchema.schema
	}

	var type: String? {
		aSchema.type
	}

	var description: String? {
		aSchema.description
	}

	var created: Date? {
		aSchema.created
	}
}
