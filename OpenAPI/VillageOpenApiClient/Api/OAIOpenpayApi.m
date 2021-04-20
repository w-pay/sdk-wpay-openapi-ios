#import "OAIOpenpayApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIBaseErrorResponse.h"
#import "OAIOpenpayCompletionsErrorResponse.h"
#import "OAIOpenpayCompletionsRequest.h"
#import "OAIOpenpayCompletionsSuccessResponse.h"
#import "OAIOpenpayPaymentsErrorResponse.h"
#import "OAIOpenpayPaymentsRequest.h"
#import "OAIOpenpayPaymentsSuccessResponse.h"
#import "OAIOpenpayRefundsErrorResponse.h"
#import "OAIOpenpayRefundsRequest.h"
#import "OAIOpenpayRefundsSuccessResponse.h"
#import "OAIOpenpayVoidsErrorResponse.h"
#import "OAIOpenpayVoidsRequest.h"
#import "OAIOpenpayVoidsSuccessResponse.h"


@interface OAIOpenpayApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIOpenpayApi

NSString* kOAIOpenpayApiErrorDomain = @"OAIOpenpayApiErrorDomain";
NSInteger kOAIOpenpayApiMissingParamErrorCode = 234513;

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
/// Openpay Completions
/// Complete pre-authed Openpay payments. This API is IP restricted to allow unauthenticated server side calls.
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
///  @returns OAIOpenpayCompletionsSuccessResponse*
///
-(NSURLSessionTask*) openpayCompletionsPostWithXApiKey: (NSString*) xApiKey
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIOpenpayCompletionsRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIOpenpayCompletionsSuccessResponse* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIOpenpayApiErrorDomain code:kOAIOpenpayApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIOpenpayApiErrorDomain code:kOAIOpenpayApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIOpenpayApiErrorDomain code:kOAIOpenpayApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/openpay/completions"];

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
                              responseType: @"OAIOpenpayCompletionsSuccessResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOpenpayCompletionsSuccessResponse*)data, error);
                                }
                            }];
}

///
/// Openpay Payments
/// Make payments to a merchant using Openpay payment tokens.
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
///  @returns OAIOpenpayPaymentsSuccessResponse*
///
-(NSURLSessionTask*) openpayPaymentsPostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIOpenpayPaymentsRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIOpenpayPaymentsSuccessResponse* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIOpenpayApiErrorDomain code:kOAIOpenpayApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'authorization' is set
    if (authorization == nil) {
        NSParameterAssert(authorization);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"authorization"] };
            NSError* error = [NSError errorWithDomain:kOAIOpenpayApiErrorDomain code:kOAIOpenpayApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIOpenpayApiErrorDomain code:kOAIOpenpayApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIOpenpayApiErrorDomain code:kOAIOpenpayApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/openpay/payments"];

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
                              responseType: @"OAIOpenpayPaymentsSuccessResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOpenpayPaymentsSuccessResponse*)data, error);
                                }
                            }];
}

///
/// Openpay Refunds
/// Refund Openpay payments. This API is IP restricted to allow unauthenticated server side calls.
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
///  @returns OAIOpenpayRefundsSuccessResponse*
///
-(NSURLSessionTask*) openpayRefundsPostWithXApiKey: (NSString*) xApiKey
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIOpenpayRefundsRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIOpenpayRefundsSuccessResponse* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIOpenpayApiErrorDomain code:kOAIOpenpayApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIOpenpayApiErrorDomain code:kOAIOpenpayApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIOpenpayApiErrorDomain code:kOAIOpenpayApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/openpay/refunds"];

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
                              responseType: @"OAIOpenpayRefundsSuccessResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOpenpayRefundsSuccessResponse*)data, error);
                                }
                            }];
}

///
/// Openpay Voids
/// Void (cancel) pre-authed Openpay payments. This API is IP restricted to allow unauthenticated server side calls.
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
///  @returns OAIOpenpayVoidsSuccessResponse*
///
-(NSURLSessionTask*) openpayVoidsPostWithXApiKey: (NSString*) xApiKey
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIOpenpayVoidsRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIOpenpayVoidsSuccessResponse* output, NSError* error)) handler {
    // verify the required parameter 'xApiKey' is set
    if (xApiKey == nil) {
        NSParameterAssert(xApiKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xApiKey"] };
            NSError* error = [NSError errorWithDomain:kOAIOpenpayApiErrorDomain code:kOAIOpenpayApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xJWSSignature' is set
    if (xJWSSignature == nil) {
        NSParameterAssert(xJWSSignature);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xJWSSignature"] };
            NSError* error = [NSError errorWithDomain:kOAIOpenpayApiErrorDomain code:kOAIOpenpayApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIOpenpayApiErrorDomain code:kOAIOpenpayApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/openpay/voids"];

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
                              responseType: @"OAIOpenpayVoidsSuccessResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIOpenpayVoidsSuccessResponse*)data, error);
                                }
                            }];
}



@end
