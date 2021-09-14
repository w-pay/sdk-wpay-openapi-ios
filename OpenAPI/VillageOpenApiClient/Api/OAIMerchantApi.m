#import "OAIMerchantApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIChargePaymentAgreementResponse.h"
#import "OAICreateMerchantPaymentSessionResponse.h"
#import "OAICreateMerchantSchemaResults.h"
#import "OAICreatePaymentRequestQRCodeResults.h"
#import "OAICreatePaymentRequestResults.h"
#import "OAICreatePaymentSessionRequest.h"
#import "OAICustomerPaymentSessionResult.h"
#import "OAIError.h"
#import "OAIGetMerchantPaymentDetailsResults.h"
#import "OAIGetMerchantPaymentsResults.h"
#import "OAIGetMerchantTransactionDetailsResults.h"
#import "OAIGetMerchantTransactionsResults.h"
#import "OAIInlineObject.h"
#import "OAIInlineObject1.h"
#import "OAIMerchantChargePaymentAgreementRequest.h"
#import "OAIMerchantPaymentRequest.h"
#import "OAIMerchantPreferences.h"
#import "OAIMerchantPreferencesResult.h"
#import "OAIMerchantSchema.h"
#import "OAIMerchantSchemaDetailsResult.h"
#import "OAIMerchantSchemaResult.h"
#import "OAIMerchantTransactionResults.h"
#import "OAIPaymentQRCodeDetails.h"
#import "OAIRefundMerchantTransactionRequest.h"
#import "OAIUpdatePaymentSessionRequest1.h"


@interface OAIMerchantApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIMerchantApi

NSString* kOAIMerchantApiErrorDomain = @"OAIMerchantApiErrorDomain";
NSInteger kOAIMerchantApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[OAIApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(OAIApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Invalidate QR Code
/// Cancel an existing QC code.  Effectively expires the QR code
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param qrId The ID of the specific QR Code 
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns void
///
-(NSURLSessionTask*) cancelPaymentRequestQRCodeWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    qrId: (NSString*) qrId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'qrId' is set
    if (qrId == nil) {
        NSParameterAssert(qrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"qrId"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instore/merchant/qr/{qrId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (qrId != nil) {
        pathParams[@"qrId"] = qrId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xApiKey != nil) {
        headerParams[@"X-Api-Key"] = xApiKey;
    }
    if (xAuthKey != nil) {
        headerParams[@"X-Auth-Key"] = xAuthKey;
    }
    if (xAuthDigest != nil) {
        headerParams[@"X-Auth-Digest"] = xAuthDigest;
    }
    if (xMessageId != nil) {
        headerParams[@"X-Message-Id"] = xMessageId;
    }
    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
    if (xJWSSignature != nil) {
        headerParams[@"X-JWS-Signature"] = xJWSSignature;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Charge Payment Agreement
/// Charge a payment agreement
///  @param xMerchantID  
///
///  @param paymentToken The ID of the specific payment agreement 
///
///  @param merchantChargePaymentAgreementRequest  
///
///  @returns OAIChargePaymentAgreementResponse*
///
-(NSURLSessionTask*) chargeMerchantPaymentAgreementWithXMerchantID: (NSString*) xMerchantID
    paymentToken: (NSString*) paymentToken
    merchantChargePaymentAgreementRequest: (OAIMerchantChargePaymentAgreementRequest*) merchantChargePaymentAgreementRequest
    completionHandler: (void (^)(OAIChargePaymentAgreementResponse* output, NSError* error)) handler {
    // verify the required parameter 'xMerchantID' is set
    if (xMerchantID == nil) {
        NSParameterAssert(xMerchantID);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xMerchantID"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'paymentToken' is set
    if (paymentToken == nil) {
        NSParameterAssert(paymentToken);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"paymentToken"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'merchantChargePaymentAgreementRequest' is set
    if (merchantChargePaymentAgreementRequest == nil) {
        NSParameterAssert(merchantChargePaymentAgreementRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"merchantChargePaymentAgreementRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instore/merchant/payments/agreements/{paymentToken}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (paymentToken != nil) {
        pathParams[@"paymentToken"] = paymentToken;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xMerchantID != nil) {
        headerParams[@"X-Merchant-ID"] = xMerchantID;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = merchantChargePaymentAgreementRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIChargePaymentAgreementResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIChargePaymentAgreementResponse*)data, error);
                                }
                            }];
}

///
/// Add Schema
/// Add a new schema that can be used in schema based payloads for this merchant
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param merchantSchema  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAICreateMerchantSchemaResults*
///
-(NSURLSessionTask*) createMerchantSchemaWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    merchantSchema: (OAIMerchantSchema*) merchantSchema
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAICreateMerchantSchemaResults* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'merchantSchema' is set
    if (merchantSchema == nil) {
        NSParameterAssert(merchantSchema);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"merchantSchema"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instore/merchant/schema"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xApiKey != nil) {
        headerParams[@"X-Api-Key"] = xApiKey;
    }
    if (xAuthKey != nil) {
        headerParams[@"X-Auth-Key"] = xAuthKey;
    }
    if (xAuthDigest != nil) {
        headerParams[@"X-Auth-Digest"] = xAuthDigest;
    }
    if (xMessageId != nil) {
        headerParams[@"X-Message-Id"] = xMessageId;
    }
    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
    if (xJWSSignature != nil) {
        headerParams[@"X-JWS-Signature"] = xJWSSignature;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = merchantSchema;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAICreateMerchantSchemaResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICreateMerchantSchemaResults*)data, error);
                                }
                            }];
}

///
/// Create Payment
/// Create a new payment request that can then be presented to a customer for payment
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param merchantPaymentRequest  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAICreatePaymentRequestResults*
///
-(NSURLSessionTask*) createPaymentRequestWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    merchantPaymentRequest: (OAIMerchantPaymentRequest*) merchantPaymentRequest
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAICreatePaymentRequestResults* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'merchantPaymentRequest' is set
    if (merchantPaymentRequest == nil) {
        NSParameterAssert(merchantPaymentRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"merchantPaymentRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instore/merchant/payments"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xApiKey != nil) {
        headerParams[@"X-Api-Key"] = xApiKey;
    }
    if (xAuthKey != nil) {
        headerParams[@"X-Auth-Key"] = xAuthKey;
    }
    if (xAuthDigest != nil) {
        headerParams[@"X-Auth-Digest"] = xAuthDigest;
    }
    if (xMessageId != nil) {
        headerParams[@"X-Message-Id"] = xMessageId;
    }
    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
    if (xJWSSignature != nil) {
        headerParams[@"X-JWS-Signature"] = xJWSSignature;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = merchantPaymentRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAICreatePaymentRequestResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICreatePaymentRequestResults*)data, error);
                                }
                            }];
}

///
/// Create QR Code for a payment request
/// Create a new QR code for an existing payment request
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param paymentQRCodeDetails  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAICreatePaymentRequestQRCodeResults*
///
-(NSURLSessionTask*) createPaymentRequestQRCodeWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    paymentQRCodeDetails: (OAIPaymentQRCodeDetails*) paymentQRCodeDetails
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAICreatePaymentRequestQRCodeResults* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'paymentQRCodeDetails' is set
    if (paymentQRCodeDetails == nil) {
        NSParameterAssert(paymentQRCodeDetails);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"paymentQRCodeDetails"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instore/merchant/qr"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xApiKey != nil) {
        headerParams[@"X-Api-Key"] = xApiKey;
    }
    if (xAuthKey != nil) {
        headerParams[@"X-Auth-Key"] = xAuthKey;
    }
    if (xAuthDigest != nil) {
        headerParams[@"X-Auth-Digest"] = xAuthDigest;
    }
    if (xMessageId != nil) {
        headerParams[@"X-Message-Id"] = xMessageId;
    }
    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
    if (xJWSSignature != nil) {
        headerParams[@"X-JWS-Signature"] = xJWSSignature;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = paymentQRCodeDetails;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAICreatePaymentRequestQRCodeResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICreatePaymentRequestQRCodeResults*)data, error);
                                }
                            }];
}

///
/// Create Payment Session
/// Create a new payment session
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param createPaymentSessionRequest  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAICreateMerchantPaymentSessionResponse*
///
-(NSURLSessionTask*) createPaymentSessionWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    createPaymentSessionRequest: (OAICreatePaymentSessionRequest*) createPaymentSessionRequest
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAICreateMerchantPaymentSessionResponse* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'createPaymentSessionRequest' is set
    if (createPaymentSessionRequest == nil) {
        NSParameterAssert(createPaymentSessionRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"createPaymentSessionRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instore/merchant/payment/session"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xApiKey != nil) {
        headerParams[@"X-Api-Key"] = xApiKey;
    }
    if (xAuthKey != nil) {
        headerParams[@"X-Auth-Key"] = xAuthKey;
    }
    if (xAuthDigest != nil) {
        headerParams[@"X-Auth-Digest"] = xAuthDigest;
    }
    if (xMessageId != nil) {
        headerParams[@"X-Message-Id"] = xMessageId;
    }
    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
    if (xJWSSignature != nil) {
        headerParams[@"X-JWS-Signature"] = xJWSSignature;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = createPaymentSessionRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAICreateMerchantPaymentSessionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICreateMerchantPaymentSessionResponse*)data, error);
                                }
                            }];
}

///
/// Delete Payment Agreement
/// Delete an existing payment agreement.
///  @param xMerchantID  
///
///  @param paymentToken The ID of the specific payment agreement 
///
///  @returns void
///
-(NSURLSessionTask*) deleteMerchantPaymentAgreementWithXMerchantID: (NSString*) xMerchantID
    paymentToken: (NSString*) paymentToken
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'xMerchantID' is set
    if (xMerchantID == nil) {
        NSParameterAssert(xMerchantID);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xMerchantID"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'paymentToken' is set
    if (paymentToken == nil) {
        NSParameterAssert(paymentToken);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"paymentToken"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instore/merchant/payments/agreements/{paymentToken}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (paymentToken != nil) {
        pathParams[@"paymentToken"] = paymentToken;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xMerchantID != nil) {
        headerParams[@"X-Merchant-ID"] = xMerchantID;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Delete Payment Request
/// Cancel an existing payment by setting the expiration date/time to now and setting the remaining uses to 0.  Will only be successful if the payment is still pending.  Completed payments need to be refunded using the dedicated API for that purpose
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param paymentRequestId The ID of the specific payment request 
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns void
///
-(NSURLSessionTask*) deleteMerchantPaymentRequestWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    paymentRequestId: (NSString*) paymentRequestId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'paymentRequestId' is set
    if (paymentRequestId == nil) {
        NSParameterAssert(paymentRequestId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"paymentRequestId"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instore/merchant/payments/{paymentRequestId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (paymentRequestId != nil) {
        pathParams[@"paymentRequestId"] = paymentRequestId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xApiKey != nil) {
        headerParams[@"X-Api-Key"] = xApiKey;
    }
    if (xAuthKey != nil) {
        headerParams[@"X-Auth-Key"] = xAuthKey;
    }
    if (xAuthDigest != nil) {
        headerParams[@"X-Auth-Digest"] = xAuthDigest;
    }
    if (xMessageId != nil) {
        headerParams[@"X-Message-Id"] = xMessageId;
    }
    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
    if (xJWSSignature != nil) {
        headerParams[@"X-JWS-Signature"] = xJWSSignature;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Delete Payment Session
/// Deletes a payment session by setting its expiration date/time to now
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param paymentSessionId The ID of the specific payment session to delete 
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns void
///
-(NSURLSessionTask*) deletePaymentSessionWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    paymentSessionId: (NSString*) paymentSessionId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'paymentSessionId' is set
    if (paymentSessionId == nil) {
        NSParameterAssert(paymentSessionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"paymentSessionId"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instore/merchant/payment/session/{paymentSessionId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (paymentSessionId != nil) {
        pathParams[@"paymentSessionId"] = paymentSessionId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xApiKey != nil) {
        headerParams[@"X-Api-Key"] = xApiKey;
    }
    if (xAuthKey != nil) {
        headerParams[@"X-Auth-Key"] = xAuthKey;
    }
    if (xAuthDigest != nil) {
        headerParams[@"X-Auth-Digest"] = xAuthDigest;
    }
    if (xMessageId != nil) {
        headerParams[@"X-Message-Id"] = xMessageId;
    }
    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
    if (xJWSSignature != nil) {
        headerParams[@"X-JWS-Signature"] = xJWSSignature;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Get Payment Details
/// Get the details for a specific payment.  Provides all types of payments and all payment content
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param paymentRequestId The ID of the specific payment request 
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAIGetMerchantPaymentDetailsResults*
///
-(NSURLSessionTask*) getMerchantPaymentDetailsWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    paymentRequestId: (NSString*) paymentRequestId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIGetMerchantPaymentDetailsResults* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'paymentRequestId' is set
    if (paymentRequestId == nil) {
        NSParameterAssert(paymentRequestId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"paymentRequestId"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instore/merchant/payments/{paymentRequestId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (paymentRequestId != nil) {
        pathParams[@"paymentRequestId"] = paymentRequestId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xApiKey != nil) {
        headerParams[@"X-Api-Key"] = xApiKey;
    }
    if (xAuthKey != nil) {
        headerParams[@"X-Auth-Key"] = xAuthKey;
    }
    if (xAuthDigest != nil) {
        headerParams[@"X-Auth-Digest"] = xAuthDigest;
    }
    if (xMessageId != nil) {
        headerParams[@"X-Message-Id"] = xMessageId;
    }
    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
    if (xJWSSignature != nil) {
        headerParams[@"X-JWS-Signature"] = xJWSSignature;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIGetMerchantPaymentDetailsResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGetMerchantPaymentDetailsResults*)data, error);
                                }
                            }];
}

///
/// Get Payment List
/// Get a list of the payments initiated by the merchant, both pending and complete
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @param type The type of payment requests to return: active, inactive or both (optional, default to @"ACTIVE")
///
///  @param pageSize The number of records to return for this page.  Defaults to 25 if absent (optional, default to @25)
///
///  @param page The page of results to return with 1 indicating the first page.  Defaults to 1 if absent (optional, default to @1)
///
///  @returns OAIGetMerchantPaymentsResults*
///
-(NSURLSessionTask*) getMerchantPaymentsWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    type: (NSString*) type
    pageSize: (NSNumber*) pageSize
    page: (NSNumber*) page
    completionHandler: (void (^)(OAIGetMerchantPaymentsResults* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instore/merchant/payments"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (pageSize != nil) {
        queryParams[@"page-size"] = pageSize;
    }
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xApiKey != nil) {
        headerParams[@"X-Api-Key"] = xApiKey;
    }
    if (xAuthKey != nil) {
        headerParams[@"X-Auth-Key"] = xAuthKey;
    }
    if (xAuthDigest != nil) {
        headerParams[@"X-Auth-Digest"] = xAuthDigest;
    }
    if (xMessageId != nil) {
        headerParams[@"X-Message-Id"] = xMessageId;
    }
    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
    if (xJWSSignature != nil) {
        headerParams[@"X-JWS-Signature"] = xJWSSignature;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIGetMerchantPaymentsResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGetMerchantPaymentsResults*)data, error);
                                }
                            }];
}

///
/// Get Preferences
/// Get the preferences previously set by the customer or merchant (depending on calling identity)
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAIMerchantPreferencesResult*
///
-(NSURLSessionTask*) getMerchantPreferencesWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIMerchantPreferencesResult* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instore/merchant/preferences"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xApiKey != nil) {
        headerParams[@"X-Api-Key"] = xApiKey;
    }
    if (xAuthKey != nil) {
        headerParams[@"X-Auth-Key"] = xAuthKey;
    }
    if (xAuthDigest != nil) {
        headerParams[@"X-Auth-Digest"] = xAuthDigest;
    }
    if (xMessageId != nil) {
        headerParams[@"X-Message-Id"] = xMessageId;
    }
    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
    if (xJWSSignature != nil) {
        headerParams[@"X-JWS-Signature"] = xJWSSignature;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIMerchantPreferencesResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMerchantPreferencesResult*)data, error);
                                }
                            }];
}

///
/// Get Schema Details
/// Get the list of currently usable schema previously added for the merchant
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param schemaId The ID of the specific schema to get details for 
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAIMerchantSchemaDetailsResult*
///
-(NSURLSessionTask*) getMerchantSchemaDetailsWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    schemaId: (NSString*) schemaId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIMerchantSchemaDetailsResult* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'schemaId' is set
    if (schemaId == nil) {
        NSParameterAssert(schemaId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"schemaId"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instore/merchant/schema/{schemaId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (schemaId != nil) {
        pathParams[@"schemaId"] = schemaId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xApiKey != nil) {
        headerParams[@"X-Api-Key"] = xApiKey;
    }
    if (xAuthKey != nil) {
        headerParams[@"X-Auth-Key"] = xAuthKey;
    }
    if (xAuthDigest != nil) {
        headerParams[@"X-Auth-Digest"] = xAuthDigest;
    }
    if (xMessageId != nil) {
        headerParams[@"X-Message-Id"] = xMessageId;
    }
    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
    if (xJWSSignature != nil) {
        headerParams[@"X-JWS-Signature"] = xJWSSignature;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIMerchantSchemaDetailsResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMerchantSchemaDetailsResult*)data, error);
                                }
                            }];
}

///
/// Get Schema List
/// Get the list of currently usable schema previously added for the merchant
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAIMerchantSchemaResult*
///
-(NSURLSessionTask*) getMerchantSchemasWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIMerchantSchemaResult* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instore/merchant/schema"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xApiKey != nil) {
        headerParams[@"X-Api-Key"] = xApiKey;
    }
    if (xAuthKey != nil) {
        headerParams[@"X-Auth-Key"] = xAuthKey;
    }
    if (xAuthDigest != nil) {
        headerParams[@"X-Auth-Digest"] = xAuthDigest;
    }
    if (xMessageId != nil) {
        headerParams[@"X-Message-Id"] = xMessageId;
    }
    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
    if (xJWSSignature != nil) {
        headerParams[@"X-JWS-Signature"] = xJWSSignature;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIMerchantSchemaResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMerchantSchemaResult*)data, error);
                                }
                            }];
}

///
/// Get Transaction Details
/// Get the details for a specific transaction previously executed with the merchant.  Note that amounts are relative to the merchant.  A positive amount is a positive amount transferred to a merchant
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param transactionId The ID of the specific transaction 
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAIGetMerchantTransactionDetailsResults*
///
-(NSURLSessionTask*) getMerchantTransactionDetailsWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    transactionId: (NSString*) transactionId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIGetMerchantTransactionDetailsResults* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'transactionId' is set
    if (transactionId == nil) {
        NSParameterAssert(transactionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"transactionId"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instore/merchant/transactions/{transactionId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (transactionId != nil) {
        pathParams[@"transactionId"] = transactionId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xApiKey != nil) {
        headerParams[@"X-Api-Key"] = xApiKey;
    }
    if (xAuthKey != nil) {
        headerParams[@"X-Auth-Key"] = xAuthKey;
    }
    if (xAuthDigest != nil) {
        headerParams[@"X-Auth-Digest"] = xAuthDigest;
    }
    if (xMessageId != nil) {
        headerParams[@"X-Message-Id"] = xMessageId;
    }
    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
    if (xJWSSignature != nil) {
        headerParams[@"X-JWS-Signature"] = xJWSSignature;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIGetMerchantTransactionDetailsResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGetMerchantTransactionDetailsResults*)data, error);
                                }
                            }];
}

///
/// Get Transaction List
/// Get a list of the previously executed transactions with the merchant.  Note that amounts are relative to the merchant.  A positive amount is a positive amount transferred to a merchant
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @param startTime If present, the date/time to limit transactions returned.  Transactions older than this time will not be returned (optional)
///
///  @param endTime If present, the date/time to limit transactions returned.  Transactions newer than this time will not be returned (optional)
///
///  @param pageSize The number of records to return for this page.  Defaults to 25 if absent (optional, default to @25)
///
///  @param page The page of results to return with 1 indicating the first page.  Defaults to 1 if absent (optional, default to @1)
///
///  @returns OAIGetMerchantTransactionsResults*
///
-(NSURLSessionTask*) getMerchantTransactionsWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    startTime: (NSDate*) startTime
    endTime: (NSDate*) endTime
    pageSize: (NSNumber*) pageSize
    page: (NSNumber*) page
    completionHandler: (void (^)(OAIGetMerchantTransactionsResults* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instore/merchant/transactions"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (startTime != nil) {
        queryParams[@"start-time"] = startTime;
    }
    if (endTime != nil) {
        queryParams[@"end-time"] = endTime;
    }
    if (pageSize != nil) {
        queryParams[@"page-size"] = pageSize;
    }
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xApiKey != nil) {
        headerParams[@"X-Api-Key"] = xApiKey;
    }
    if (xAuthKey != nil) {
        headerParams[@"X-Auth-Key"] = xAuthKey;
    }
    if (xAuthDigest != nil) {
        headerParams[@"X-Auth-Digest"] = xAuthDigest;
    }
    if (xMessageId != nil) {
        headerParams[@"X-Message-Id"] = xMessageId;
    }
    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
    if (xJWSSignature != nil) {
        headerParams[@"X-JWS-Signature"] = xJWSSignature;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIGetMerchantTransactionsResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGetMerchantTransactionsResults*)data, error);
                                }
                            }];
}

///
/// Get QR Code Content
/// Obtain the content or an image for an existing QR code.  If requested content type is application/json then a payload will be returned.  if requested content is image/png an image will be returned
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param qrId The ID of the specific QR Code 
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAICreatePaymentRequestQRCodeResults*
///
-(NSURLSessionTask*) getPaymentRequestQRCodeContentWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    qrId: (NSString*) qrId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAICreatePaymentRequestQRCodeResults* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'qrId' is set
    if (qrId == nil) {
        NSParameterAssert(qrId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"qrId"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instore/merchant/qr/{qrId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (qrId != nil) {
        pathParams[@"qrId"] = qrId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xApiKey != nil) {
        headerParams[@"X-Api-Key"] = xApiKey;
    }
    if (xAuthKey != nil) {
        headerParams[@"X-Auth-Key"] = xAuthKey;
    }
    if (xAuthDigest != nil) {
        headerParams[@"X-Auth-Digest"] = xAuthDigest;
    }
    if (xMessageId != nil) {
        headerParams[@"X-Message-Id"] = xMessageId;
    }
    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
    if (xJWSSignature != nil) {
        headerParams[@"X-JWS-Signature"] = xJWSSignature;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"image/png"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAICreatePaymentRequestQRCodeResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICreatePaymentRequestQRCodeResults*)data, error);
                                }
                            }];
}

///
/// Get Payment Session
/// Get the details of a payment session
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param paymentSessionId The ID of the specific payment session to retrieve 
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAICustomerPaymentSessionResult*
///
-(NSURLSessionTask*) getPaymentSessionWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    paymentSessionId: (NSString*) paymentSessionId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAICustomerPaymentSessionResult* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'paymentSessionId' is set
    if (paymentSessionId == nil) {
        NSParameterAssert(paymentSessionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"paymentSessionId"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instore/merchant/payment/session/{paymentSessionId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (paymentSessionId != nil) {
        pathParams[@"paymentSessionId"] = paymentSessionId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xApiKey != nil) {
        headerParams[@"X-Api-Key"] = xApiKey;
    }
    if (xAuthKey != nil) {
        headerParams[@"X-Auth-Key"] = xAuthKey;
    }
    if (xAuthDigest != nil) {
        headerParams[@"X-Auth-Digest"] = xAuthDigest;
    }
    if (xMessageId != nil) {
        headerParams[@"X-Message-Id"] = xMessageId;
    }
    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
    if (xJWSSignature != nil) {
        headerParams[@"X-JWS-Signature"] = xJWSSignature;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAICustomerPaymentSessionResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAICustomerPaymentSessionResult*)data, error);
                                }
                            }];
}

///
/// Completions
/// Complete pre-authed payments. This API is IP restricted to allow unauthenticated server side calls.
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param transactionId The ID of the transaction to operate on 
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @param inlineObject  (optional)
///
///  @returns OAIMerchantTransactionResults*
///
-(NSURLSessionTask*) instoreMerchantTransactionsTransactionIdCompletionPostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    transactionId: (NSString*) transactionId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    inlineObject: (OAIInlineObject*) inlineObject
    completionHandler: (void (^)(OAIMerchantTransactionResults* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'transactionId' is set
    if (transactionId == nil) {
        NSParameterAssert(transactionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"transactionId"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instore/merchant/transactions/{transactionId}/completion"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (transactionId != nil) {
        pathParams[@"transactionId"] = transactionId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xApiKey != nil) {
        headerParams[@"X-Api-Key"] = xApiKey;
    }
    if (xAuthKey != nil) {
        headerParams[@"X-Auth-Key"] = xAuthKey;
    }
    if (xAuthDigest != nil) {
        headerParams[@"X-Auth-Digest"] = xAuthDigest;
    }
    if (xMessageId != nil) {
        headerParams[@"X-Message-Id"] = xMessageId;
    }
    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
    if (xJWSSignature != nil) {
        headerParams[@"X-JWS-Signature"] = xJWSSignature;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = inlineObject;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIMerchantTransactionResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMerchantTransactionResults*)data, error);
                                }
                            }];
}

///
/// Voids
/// Void (cancel) pre-authed payments. This API is IP restricted to allow unauthenticated server side calls.
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param transactionId The ID of the transaction to operate on 
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @param inlineObject1  (optional)
///
///  @returns OAIMerchantTransactionResults*
///
-(NSURLSessionTask*) instoreMerchantTransactionsTransactionIdVoidPostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    transactionId: (NSString*) transactionId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    inlineObject1: (OAIInlineObject1*) inlineObject1
    completionHandler: (void (^)(OAIMerchantTransactionResults* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'transactionId' is set
    if (transactionId == nil) {
        NSParameterAssert(transactionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"transactionId"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instore/merchant/transactions/{transactionId}/void"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (transactionId != nil) {
        pathParams[@"transactionId"] = transactionId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xApiKey != nil) {
        headerParams[@"X-Api-Key"] = xApiKey;
    }
    if (xAuthKey != nil) {
        headerParams[@"X-Auth-Key"] = xAuthKey;
    }
    if (xAuthDigest != nil) {
        headerParams[@"X-Auth-Digest"] = xAuthDigest;
    }
    if (xMessageId != nil) {
        headerParams[@"X-Message-Id"] = xMessageId;
    }
    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
    if (xJWSSignature != nil) {
        headerParams[@"X-JWS-Signature"] = xJWSSignature;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = inlineObject1;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIMerchantTransactionResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMerchantTransactionResults*)data, error);
                                }
                            }];
}

///
/// Update Payment Session
/// Update the payment session details
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param paymentSessionId The ID of the specific payment session to retrieve 
///
///  @param updatePaymentSessionRequest1  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns void
///
-(NSURLSessionTask*) merchantUpdatePaymentSessionWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    paymentSessionId: (NSString*) paymentSessionId
    updatePaymentSessionRequest1: (OAIUpdatePaymentSessionRequest1*) updatePaymentSessionRequest1
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'paymentSessionId' is set
    if (paymentSessionId == nil) {
        NSParameterAssert(paymentSessionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"paymentSessionId"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'updatePaymentSessionRequest1' is set
    if (updatePaymentSessionRequest1 == nil) {
        NSParameterAssert(updatePaymentSessionRequest1);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"updatePaymentSessionRequest1"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instore/merchant/payment/session/{paymentSessionId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (paymentSessionId != nil) {
        pathParams[@"paymentSessionId"] = paymentSessionId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xApiKey != nil) {
        headerParams[@"X-Api-Key"] = xApiKey;
    }
    if (xAuthKey != nil) {
        headerParams[@"X-Auth-Key"] = xAuthKey;
    }
    if (xAuthDigest != nil) {
        headerParams[@"X-Auth-Digest"] = xAuthDigest;
    }
    if (xMessageId != nil) {
        headerParams[@"X-Message-Id"] = xMessageId;
    }
    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
    if (xJWSSignature != nil) {
        headerParams[@"X-JWS-Signature"] = xJWSSignature;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = updatePaymentSessionRequest1;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Refund Transaction
/// Refund a previously executed transaction
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param transactionId The ID of the specific transaction to reverse 
///
///  @param refundMerchantTransactionRequest  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAIMerchantTransactionResults*
///
-(NSURLSessionTask*) refundMerchantTransactionWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    transactionId: (NSString*) transactionId
    refundMerchantTransactionRequest: (OAIRefundMerchantTransactionRequest*) refundMerchantTransactionRequest
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIMerchantTransactionResults* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'transactionId' is set
    if (transactionId == nil) {
        NSParameterAssert(transactionId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"transactionId"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'refundMerchantTransactionRequest' is set
    if (refundMerchantTransactionRequest == nil) {
        NSParameterAssert(refundMerchantTransactionRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"refundMerchantTransactionRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instore/merchant/transactions/{transactionId}/refund"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (transactionId != nil) {
        pathParams[@"transactionId"] = transactionId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xApiKey != nil) {
        headerParams[@"X-Api-Key"] = xApiKey;
    }
    if (xAuthKey != nil) {
        headerParams[@"X-Auth-Key"] = xAuthKey;
    }
    if (xAuthDigest != nil) {
        headerParams[@"X-Auth-Digest"] = xAuthDigest;
    }
    if (xMessageId != nil) {
        headerParams[@"X-Message-Id"] = xMessageId;
    }
    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
    if (xJWSSignature != nil) {
        headerParams[@"X-JWS-Signature"] = xJWSSignature;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = refundMerchantTransactionRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIMerchantTransactionResults*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMerchantTransactionResults*)data, error);
                                }
                            }];
}

///
/// Set Preferences
/// Change the preferences for the customer or merchant (depending on calling identity)
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param merchantPreferences  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns void
///
-(NSURLSessionTask*) setMerchantPreferencesWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    merchantPreferences: (OAIMerchantPreferences*) merchantPreferences
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    // verify the required parameter 'merchantPreferences' is set
    if (merchantPreferences == nil) {
        NSParameterAssert(merchantPreferences);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"merchantPreferences"] };
            NSError* error = [NSError errorWithDomain:kOAIMerchantApiErrorDomain code:kOAIMerchantApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instore/merchant/preferences"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xApiKey != nil) {
        headerParams[@"X-Api-Key"] = xApiKey;
    }
    if (xAuthKey != nil) {
        headerParams[@"X-Auth-Key"] = xAuthKey;
    }
    if (xAuthDigest != nil) {
        headerParams[@"X-Auth-Digest"] = xAuthDigest;
    }
    if (xMessageId != nil) {
        headerParams[@"X-Message-Id"] = xMessageId;
    }
    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
    if (xJWSSignature != nil) {
        headerParams[@"X-JWS-Signature"] = xJWSSignature;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKeyAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = merchantPreferences;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}



@end
