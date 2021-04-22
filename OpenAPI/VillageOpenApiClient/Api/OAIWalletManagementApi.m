#import "OAIWalletManagementApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIBaseErrorResponse.h"
#import "OAIDeleteWalletRequest.h"
#import "OAIGiftcardsBalanceRequest.h"
#import "OAIGiftcardsBalanceResponse.h"
#import "OAIGuestTokenizeApplePayRequest.h"
#import "OAIGuestTokenizeGiftcardRequest.h"
#import "OAIGuestTokenizeGiftcardResponse.h"
#import "OAIGuestTokenizePaypalRequest.h"
#import "OAIGuestTokenizePaypalResponse.h"
#import "OAIImportPaymentInstrumentsRequest.h"
#import "OAIImportPaymentInstrumentsResponse.h"
#import "OAIInitiateCardCaptureRequest.h"
#import "OAIInitiateCardCaptureResponse.h"
#import "OAIListPaymentInstrumentsRequest.h"
#import "OAIListPaymentInstrumentsResponse.h"
#import "OAIMerchantProfileResponse.h"
#import "OAITokenizeAndroidPayRequest.h"
#import "OAITokenizeAndroidPayResponse.h"
#import "OAITokenizeApplePayRequest.h"
#import "OAITokenizeApplePayResponse.h"
#import "OAITokenizeGiftcardRequest.h"
#import "OAITokenizeGiftcardResponse.h"
#import "OAITokenizeGooglePayRequest.h"
#import "OAITokenizeGooglePayResponse.h"
#import "OAITokenizePaypalRequest.h"
#import "OAITokenizePaypalResponse.h"
#import "OAITransactionHistoryRequest.h"
#import "OAITransactionHistoryResponse.h"
#import "OAIVerifyPaymentInstrumentsErrorResponse.h"
#import "OAIVerifyPaymentInstrumentsRequest.h"
#import "OAIVerifyPaymentInstrumentsSuccessResponse.h"


@interface OAIWalletManagementApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIWalletManagementApi

NSString* kOAIWalletManagementApiErrorDomain = @"OAIWalletManagementApiErrorDomain";
NSInteger kOAIWalletManagementApiMissingParamErrorCode = 234513;

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
/// Update Android Pay Token
/// Update an Android Pay payment instrument.
///  @param paymentInstrumentId The id of the android pay payment instrument to update. 
///
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param body  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAITokenizeAndroidPayResponse*
///
-(NSURLSessionTask*) androidpayTokenizePaymentInstrumentIdPostWithPaymentInstrumentId: (NSString*) paymentInstrumentId
    xApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAITokenizeAndroidPayRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAITokenizeAndroidPayResponse* output, NSError* error)) handler {
    // verify the required parameter 'paymentInstrumentId' is set
    if (paymentInstrumentId == nil) {
        NSParameterAssert(paymentInstrumentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"paymentInstrumentId"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/androidpay/tokenize/{paymentInstrumentId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (paymentInstrumentId != nil) {
        pathParams[@"paymentInstrumentId"] = paymentInstrumentId;
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
    bodyParam = body;

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
                              responseType: @"OAITokenizeAndroidPayResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITokenizeAndroidPayResponse*)data, error);
                                }
                            }];
}

///
/// Tokenize Android Pay
/// Create a payment instrument id for a provided Android Pay wallet item.
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param body  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAITokenizeAndroidPayResponse*
///
-(NSURLSessionTask*) androidpayTokenizePostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAITokenizeAndroidPayRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAITokenizeAndroidPayResponse* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/androidpay/tokenize"];

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
    bodyParam = body;

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
                              responseType: @"OAITokenizeAndroidPayResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITokenizeAndroidPayResponse*)data, error);
                                }
                            }];
}

///
/// Update Apple Pay Token
/// Update an Apple Pay payment instrument.
///  @param paymentInstrumentId The id of the apple pay payment instrument to update. 
///
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param body  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAITokenizeApplePayResponse*
///
-(NSURLSessionTask*) applepayTokenizePaymentInstrumentIdPostWithPaymentInstrumentId: (NSString*) paymentInstrumentId
    xApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAITokenizeApplePayRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAITokenizeApplePayResponse* output, NSError* error)) handler {
    // verify the required parameter 'paymentInstrumentId' is set
    if (paymentInstrumentId == nil) {
        NSParameterAssert(paymentInstrumentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"paymentInstrumentId"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/applepay/tokenize/{paymentInstrumentId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (paymentInstrumentId != nil) {
        pathParams[@"paymentInstrumentId"] = paymentInstrumentId;
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
    bodyParam = body;

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
                              responseType: @"OAITokenizeApplePayResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITokenizeApplePayResponse*)data, error);
                                }
                            }];
}

///
/// Tokenize Apple Pay
/// Create a payment instrument id for a provided Apple Pay wallet item.
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param body  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAITokenizeApplePayResponse*
///
-(NSURLSessionTask*) applepayTokenizePostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAITokenizeApplePayRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAITokenizeApplePayResponse* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/applepay/tokenize"];

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
    bodyParam = body;

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
                              responseType: @"OAITokenizeApplePayResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITokenizeApplePayResponse*)data, error);
                                }
                            }];
}

///
/// Initiate Card Capture
/// Get a credit card detials input iframe (URL) for the consumer. This API is rate limited to 10 requests per minute per shopper id.
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param body  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAIInitiateCardCaptureResponse*
///
-(NSURLSessionTask*) cardsInitcapturePostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIInitiateCardCaptureRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIInitiateCardCaptureResponse* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/cards/initcapture"];

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
    bodyParam = body;

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
                              responseType: @"OAIInitiateCardCaptureResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInitiateCardCaptureResponse*)data, error);
                                }
                            }];
}

///
/// Gift Cards Balance
/// Get the balance and expiryinfo for the provided gift cards. This API is rate limited to 5 requests per minute per shopper id.
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param body  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @param xEverydayPayWallet A flag to indicate if the Everyday Pay wallet should be used when processing the API request. Set the header value to \"true\" to use the Everyday Pay wallet. Set the header value to \"false\" or exclude the header completely to use the default merchant wallet. (optional)
///
///  @returns OAIGiftcardsBalanceResponse*
///
-(NSURLSessionTask*) giftcardsBalancePostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIGiftcardsBalanceRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    xEverydayPayWallet: (NSString*) xEverydayPayWallet
    completionHandler: (void (^)(OAIGiftcardsBalanceResponse* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/giftcards/balance"];

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
    if (xEverydayPayWallet != nil) {
        // TODO: Manually fixed. See https://github.com/OpenAPITools/openapi-generator/issues/7009
        headerParams[@"X-Everyday-Pay-Wallet"] = [xEverydayPayWallet isEqual:@(YES)] ? @"true" : @"false";
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
    bodyParam = body;

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
                              responseType: @"OAIGiftcardsBalanceResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGiftcardsBalanceResponse*)data, error);
                                }
                            }];
}

///
/// Tokenize Giftcard
/// Create a paymment intrument id for a provided gift card.
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param body  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @param xEverydayPayWallet A flag to indicate if the Everyday Pay wallet should be used when processing the API request. Set the header value to \"true\" to use the Everyday Pay wallet. Set the header value to \"false\" or exclude the header completely to use the default merchant wallet. (optional)
///
///  @returns OAITokenizeGiftcardResponse*
///
-(NSURLSessionTask*) giftcardsTokenizePostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAITokenizeGiftcardRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    xEverydayPayWallet: (NSString*) xEverydayPayWallet
    completionHandler: (void (^)(OAITokenizeGiftcardResponse* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/giftcards/tokenize"];

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
    if (xEverydayPayWallet != nil) {
        // TODO: Manually fixed. See https://github.com/OpenAPITools/openapi-generator/issues/7009
        headerParams[@"X-Everyday-Pay-Wallet"] = [xEverydayPayWallet isEqual:@(YES)] ? @"true" : @"false";
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
    bodyParam = body;

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
                              responseType: @"OAITokenizeGiftcardResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITokenizeGiftcardResponse*)data, error);
                                }
                            }];
}

///
/// Update Google Pay Token
/// Update a Google Pay payment instrument.
///  @param paymentToken The payment token of the google pay payment instrument to update. 
///
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param body  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAITokenizeGooglePayResponse*
///
-(NSURLSessionTask*) googlepayTokenizePaymentTokenPostWithPaymentToken: (NSString*) paymentToken
    xApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAITokenizeGooglePayRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAITokenizeGooglePayResponse* output, NSError* error)) handler {
    // verify the required parameter 'paymentToken' is set
    if (paymentToken == nil) {
        NSParameterAssert(paymentToken);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"paymentToken"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/googlepay/tokenize/{paymentToken}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (paymentToken != nil) {
        pathParams[@"paymentToken"] = paymentToken;
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
    bodyParam = body;

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
                              responseType: @"OAITokenizeGooglePayResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITokenizeGooglePayResponse*)data, error);
                                }
                            }];
}

///
/// Tokenize Google Pay
/// Create a payment token for a provided Google Pay wallet item.
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param body  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAITokenizeGooglePayResponse*
///
-(NSURLSessionTask*) googlepayTokenizePostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAITokenizeGooglePayRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAITokenizeGooglePayResponse* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/googlepay/tokenize"];

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
    bodyParam = body;

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
                              responseType: @"OAITokenizeGooglePayResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITokenizeGooglePayResponse*)data, error);
                                }
                            }];
}

///
/// Guest Tokenize Apple Pay
/// Create a payment instrument id for a provided Apple Pay wallet item of a guest user.
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param body  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAITokenizeApplePayResponse*
///
-(NSURLSessionTask*) guestApplepayTokenizePostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIGuestTokenizeApplePayRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAITokenizeApplePayResponse* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/guest/applepay/tokenize"];

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
    bodyParam = body;

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
                              responseType: @"OAITokenizeApplePayResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITokenizeApplePayResponse*)data, error);
                                }
                            }];
}

///
/// Guest Initiate Card Capture
/// Get a credit card detials input iframe (URL) for a guest user. This API is rate limited to 10 requests per minute per guest shopper id.
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param body  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAIInitiateCardCaptureResponse*
///
-(NSURLSessionTask*) guestCardsInitcapturePostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIInitiateCardCaptureRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIInitiateCardCaptureResponse* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/guest/cards/initcapture"];

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
    bodyParam = body;

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
                              responseType: @"OAIInitiateCardCaptureResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInitiateCardCaptureResponse*)data, error);
                                }
                            }];
}

///
/// Guest Tokenize Giftcard
/// Create a paymment intrument id for a provided gift card of a guest user.
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param body  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAIGuestTokenizeGiftcardResponse*
///
-(NSURLSessionTask*) guestGiftcardsTokenizePostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIGuestTokenizeGiftcardRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIGuestTokenizeGiftcardResponse* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/guest/giftcards/tokenize"];

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
    bodyParam = body;

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
                              responseType: @"OAIGuestTokenizeGiftcardResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGuestTokenizeGiftcardResponse*)data, error);
                                }
                            }];
}

///
/// Guest Tokenize Google Pay
/// Create a payment token for a provided Google Pay wallet item of a guest user.
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param body  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAITokenizeGooglePayResponse*
///
-(NSURLSessionTask*) guestGooglepayTokenizePostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAITokenizeGooglePayRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAITokenizeGooglePayResponse* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/guest/googlepay/tokenize"];

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
    bodyParam = body;

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
                              responseType: @"OAITokenizeGooglePayResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITokenizeGooglePayResponse*)data, error);
                                }
                            }];
}

///
/// Guest Tokenize Paypal
/// Create a paymment intrument id for a provided paypal account of a guest user.
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param body  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAIGuestTokenizePaypalResponse*
///
-(NSURLSessionTask*) guestPaypalTokenizePostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIGuestTokenizePaypalRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIGuestTokenizePaypalResponse* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/guest/paypal/tokenize"];

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
    bodyParam = body;

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
                              responseType: @"OAIGuestTokenizePaypalResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGuestTokenizePaypalResponse*)data, error);
                                }
                            }];
}

///
/// List Payment Instruments
/// Get the stored payment intruments of a consumer.
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
///  @param xEverydayPayWallet A flag to indicate if the Everyday Pay wallet should be used when processing the API request. Set the header value to \"true\" to use the Everyday Pay wallet. Set the header value to \"false\" or exclude the header completely to use the default merchant wallet. (optional)
///
///  @returns OAIListPaymentInstrumentsResponse*
///
-(NSURLSessionTask*) instrumentsGetWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    xEverydayPayWallet: (NSString*) xEverydayPayWallet
    completionHandler: (void (^)(OAIListPaymentInstrumentsResponse* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instruments"];

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
    if (xEverydayPayWallet != nil) {
        // TODO: Manually fixed. See https://github.com/OpenAPITools/openapi-generator/issues/7009
        headerParams[@"X-Everyday-Pay-Wallet"] = [xEverydayPayWallet isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"OAIListPaymentInstrumentsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIListPaymentInstrumentsResponse*)data, error);
                                }
                            }];
}

///
/// Import Payment Instruments
/// Import a consumers credit cards (from WebPay) and paypal accounts to a new wallet. This API is IP restricted to allow unauthenticated server side calls.
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. 
///
///  @param body  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAIImportPaymentInstrumentsResponse*
///
-(NSURLSessionTask*) instrumentsImportPostWithXApiKey: (NSString*) xApiKey
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIImportPaymentInstrumentsRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIImportPaymentInstrumentsResponse* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instruments/import"];

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
    bodyParam = body;

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
                              responseType: @"OAIImportPaymentInstrumentsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIImportPaymentInstrumentsResponse*)data, error);
                                }
                            }];
}

///
/// Delete Payment Instrument
/// Delete a stored payment intrument of a consumer.
///  @param paymentInstrumentId The id of the payment instrument to delete. 
///
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
///  @param xEverydayPayWallet A flag to indicate if the Everyday Pay wallet should be used when processing the API request. Set the header value to \"true\" to use the Everyday Pay wallet. Set the header value to \"false\" or exclude the header completely to use the default merchant wallet. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) instrumentsPaymentInstrumentIdDeleteWithPaymentInstrumentId: (NSString*) paymentInstrumentId
    xApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    xEverydayPayWallet: (NSString*) xEverydayPayWallet
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'paymentInstrumentId' is set
    if (paymentInstrumentId == nil) {
        NSParameterAssert(paymentInstrumentId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"paymentInstrumentId"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instruments/{paymentInstrumentId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (paymentInstrumentId != nil) {
        pathParams[@"paymentInstrumentId"] = paymentInstrumentId;
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
    if (xEverydayPayWallet != nil) {
        // TODO: Manually fixed. See https://github.com/OpenAPITools/openapi-generator/issues/7009
        headerParams[@"X-Everyday-Pay-Wallet"] = [xEverydayPayWallet isEqual:@(YES)] ? @"true" : @"false";
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
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// List Payment Instruments
/// Get the stored payment intruments of a consumer. This API is IP restricted to allow unauthenticated server side calls.
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param body  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAIListPaymentInstrumentsResponse*
///
-(NSURLSessionTask*) instrumentsPostWithXApiKey: (NSString*) xApiKey
    body: (OAIListPaymentInstrumentsRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIListPaymentInstrumentsResponse* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instruments"];

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
    bodyParam = body;

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
                              responseType: @"OAIListPaymentInstrumentsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIListPaymentInstrumentsResponse*)data, error);
                                }
                            }];
}

///
/// Verify Payment Instruments
/// Verify if a provided payment instrument is valid and optionally perform a fraud check on the instrument.
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param body  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @param xEverydayPayWallet A flag to indicate if the Everyday Pay wallet should be used when processing the API request. Set the header value to \"true\" to use the Everyday Pay wallet. Set the header value to \"false\" or exclude the header completely to use the default merchant wallet. (optional)
///
///  @returns OAIVerifyPaymentInstrumentsSuccessResponse*
///
-(NSURLSessionTask*) instrumentsVerifyPostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIVerifyPaymentInstrumentsRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    xEverydayPayWallet: (NSString*) xEverydayPayWallet
    completionHandler: (void (^)(OAIVerifyPaymentInstrumentsSuccessResponse* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/instruments/verify"];

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
    if (xEverydayPayWallet != nil) {
        // TODO: Manually fixed. See https://github.com/OpenAPITools/openapi-generator/issues/7009
        headerParams[@"X-Everyday-Pay-Wallet"] = [xEverydayPayWallet isEqual:@(YES)] ? @"true" : @"false";
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
    bodyParam = body;

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
                              responseType: @"OAIVerifyPaymentInstrumentsSuccessResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIVerifyPaymentInstrumentsSuccessResponse*)data, error);
                                }
                            }];
}

///
/// Merchant Profile
/// Get the current configuration set of the merchant. If this API is called without a valid access token it is IP restricted to allow unauthenticated server side calls.
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
///  @returns OAIMerchantProfileResponse*
///
-(NSURLSessionTask*) merchantsProfileGetWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIMerchantProfileResponse* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/merchants/profile"];

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
                              responseType: @"OAIMerchantProfileResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIMerchantProfileResponse*)data, error);
                                }
                            }];
}

///
/// Tokenize Paypal
/// Create a paymment intrument id for a provided paypal account.
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param body  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @returns OAITokenizePaypalResponse*
///
-(NSURLSessionTask*) paypalTokenizePostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAITokenizePaypalRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAITokenizePaypalResponse* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/paypal/tokenize"];

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
    bodyParam = body;

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
                              responseType: @"OAITokenizePaypalResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITokenizePaypalResponse*)data, error);
                                }
                            }];
}

///
/// Transaction History
/// Get the transaction history of a consumer.
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. 
///
///  @param body  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @param xEverydayPayWallet A flag to indicate if the Everyday Pay wallet should be used when processing the API request. Set the header value to \"true\" to use the Everyday Pay wallet. Set the header value to \"false\" or exclude the header completely to use the default merchant wallet. (optional)
///
///  @returns OAITransactionHistoryResponse*
///
-(NSURLSessionTask*) transactionsPostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAITransactionHistoryRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    xEverydayPayWallet: (NSString*) xEverydayPayWallet
    completionHandler: (void (^)(OAITransactionHistoryResponse* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/transactions"];

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
    if (xEverydayPayWallet != nil) {
        // TODO: Manually fixed. See https://github.com/OpenAPITools/openapi-generator/issues/7009
        headerParams[@"X-Everyday-Pay-Wallet"] = [xEverydayPayWallet isEqual:@(YES)] ? @"true" : @"false";
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
    bodyParam = body;

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
                              responseType: @"OAITransactionHistoryResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAITransactionHistoryResponse*)data, error);
                                }
                            }];
}

///
/// Delete Wallet
/// Delete a consumers wallet. This API is IP restricted to allow unauthenticated server side calls.
///  @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. 
///
///  @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. 
///
///  @param body  
///
///  @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
///
///  @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
///
///  @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
///
///  @param xEverydayPayWallet A flag to indicate if the Everyday Pay wallet should be used when processing the API request. Set the header value to \"true\" to use the Everyday Pay wallet. Set the header value to \"false\" or exclude the header completely to use the default merchant wallet. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) walletDeletePostWithXApiKey: (NSString*) xApiKey
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIDeleteWalletRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    xEverydayPayWallet: (NSString*) xEverydayPayWallet
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIWalletManagementApiErrorDomain code:kOAIWalletManagementApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/wallet/delete"];

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
    if (xJWSSignature != nil) {
        headerParams[@"X-JWS-Signature"] = xJWSSignature;
    }
    if (xEverydayPayWallet != nil) {
        // TODO: Manually fixed. See https://github.com/OpenAPITools/openapi-generator/issues/7009
        headerParams[@"X-Everyday-Pay-Wallet"] = [xEverydayPayWallet isEqual:@(YES)] ? @"true" : @"false";
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
    bodyParam = body;

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
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}



@end
