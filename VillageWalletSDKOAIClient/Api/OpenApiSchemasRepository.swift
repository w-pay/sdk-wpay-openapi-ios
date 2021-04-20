import UIKit
import VillageWalletSDK

public class OpenApiSchemasRepository: OpenApiClientFactory, SchemasRepository {
	public func list(completion: @escaping ApiCompletion<MerchantSchemaSummaries>) {
		let api = createMerchantApi()

		api.getMerchantSchemas(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_MERCHANT_ID),
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiMerchantSchemaSummaries(
					schemas: result!.data.schemas as! [OAIMerchantSchemaSummary]
				)))
			})
	}

	public func getById(schemaId: String, completion: @escaping ApiCompletion<MerchantSchema>) {
		let api = createMerchantApi()

		api.getMerchantSchemaDetails(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_MERCHANT_ID),
			schemaId: schemaId,
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiMerchantSchema(schema: result!.data)))
			})
	}

	public func create(
		schema: MerchantSchema,
		completion: @escaping ApiCompletion<MerchantSchemaSummary>
	) {
		let api = createMerchantApi()

		let body = OAIMerchantSchema()
		body.data = OAIMerchantSchemaData()
		body.data.schema = (schema.schema as! [String: NSObject])
		body.data.type = schema.type
		body.data._description = schema.description

		api.createMerchantSchema(
			withXMerchantID: self.getDefaultHeader(client: api.apiClient, name: X_MERCHANT_ID),
			merchantSchema: body,
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiMerchantSchemaSummary(summary: result!.data)))
			})
	}
}