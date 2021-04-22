import UIKit
import VillageWalletSDK

public class OpenApiSchemasRepository: OpenApiClientFactory, SchemasRepository {
	public func list(completion: @escaping ApiCompletion<MerchantSchemaSummaries>) {
		let api = createMerchantApi()

		api.getMerchantSchemas(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
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
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			schemaId: schemaId,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
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
		body.data = OAIInstoreMerchantSchemaData()
		body.data.schema = (schema.schema as! [String: NSObject])
		body.data.type = schema.type
		body.data._description = schema.description

		api.createMerchantSchema(
			withXApiKey: getDefaultHeader(client: api.apiClient, name: X_API_KEY),
			authorization: getDefaultHeader(client: api.apiClient, name: AUTHORISATION),
			xJWSSignature: "",
			merchantSchema: body,
			xAuthKey: "",
			xAuthDigest: "",
			xMessageId: "",
			completionHandler: { result, error in
				guard error == nil else {
					return completion(self.extractError(error: error! as NSError))
				}

				completion(.success(OpenApiMerchantSchemaSummary(summary: result!.data)))
			})
	}
}