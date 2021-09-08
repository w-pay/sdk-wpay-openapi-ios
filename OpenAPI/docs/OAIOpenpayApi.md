# OAIOpenpayApi

All URIs are relative to *https://dev-api.wpay.com.au/wow/v1/pay*

Method | HTTP request | Description
------------- | ------------- | -------------
[**openpayCompletionsPost**](OAIOpenpayApi.md#openpaycompletionspost) | **POST** /openpay/completions | Openpay Completions
[**openpayPaymentsPost**](OAIOpenpayApi.md#openpaypaymentspost) | **POST** /openpay/payments | Openpay Payments
[**openpayRefundsPost**](OAIOpenpayApi.md#openpayrefundspost) | **POST** /openpay/refunds | Openpay Refunds
[**openpayVoidsPost**](OAIOpenpayApi.md#openpayvoidspost) | **POST** /openpay/voids | Openpay Voids


# **openpayCompletionsPost**
```objc
-(NSURLSessionTask*) openpayCompletionsPostWithXApiKey: (NSString*) xApiKey
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIOpenpayCompletionsRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAIOpenpayCompletionsSuccessResponse* output, NSError* error)) handler;
```

Openpay Completions

Complete pre-authed Openpay payments. This API is IP restricted to allow unauthenticated server side calls.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];


NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible.
OAIOpenpayCompletionsRequest* body = [[OAIOpenpayCompletionsRequest alloc] init]; // 
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIOpenpayApi*apiInstance = [[OAIOpenpayApi alloc] init];

// Openpay Completions
[apiInstance openpayCompletionsPostWithXApiKey:xApiKey
              xJWSSignature:xJWSSignature
              body:body
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAIOpenpayCompletionsSuccessResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOpenpayApi->openpayCompletionsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. | 
 **body** | [**OAIOpenpayCompletionsRequest***](OAIOpenpayCompletionsRequest.md)|  | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAIOpenpayCompletionsSuccessResponse***](OAIOpenpayCompletionsSuccessResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **openpayPaymentsPost**
```objc
-(NSURLSessionTask*) openpayPaymentsPostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIOpenpayPaymentsRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAIOpenpayPaymentsSuccessResponse* output, NSError* error)) handler;
```

Openpay Payments

Make payments to a merchant using Openpay payment tokens.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];


NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* authorization = Bearer 7M8hv8tqpdfSnsEZIDBzJNo91MHF; // The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present.
OAIOpenpayPaymentsRequest* body = [[OAIOpenpayPaymentsRequest alloc] init]; // 
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIOpenpayApi*apiInstance = [[OAIOpenpayApi alloc] init];

// Openpay Payments
[apiInstance openpayPaymentsPostWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              body:body
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAIOpenpayPaymentsSuccessResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOpenpayApi->openpayPaymentsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **body** | [**OAIOpenpayPaymentsRequest***](OAIOpenpayPaymentsRequest.md)|  | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAIOpenpayPaymentsSuccessResponse***](OAIOpenpayPaymentsSuccessResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **openpayRefundsPost**
```objc
-(NSURLSessionTask*) openpayRefundsPostWithXApiKey: (NSString*) xApiKey
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIOpenpayRefundsRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAIOpenpayRefundsSuccessResponse* output, NSError* error)) handler;
```

Openpay Refunds

Refund Openpay payments. This API is IP restricted to allow unauthenticated server side calls.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];


NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible.
OAIOpenpayRefundsRequest* body = [[OAIOpenpayRefundsRequest alloc] init]; // 
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIOpenpayApi*apiInstance = [[OAIOpenpayApi alloc] init];

// Openpay Refunds
[apiInstance openpayRefundsPostWithXApiKey:xApiKey
              xJWSSignature:xJWSSignature
              body:body
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAIOpenpayRefundsSuccessResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOpenpayApi->openpayRefundsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. | 
 **body** | [**OAIOpenpayRefundsRequest***](OAIOpenpayRefundsRequest.md)|  | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAIOpenpayRefundsSuccessResponse***](OAIOpenpayRefundsSuccessResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **openpayVoidsPost**
```objc
-(NSURLSessionTask*) openpayVoidsPostWithXApiKey: (NSString*) xApiKey
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIOpenpayVoidsRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAIOpenpayVoidsSuccessResponse* output, NSError* error)) handler;
```

Openpay Voids

Void (cancel) pre-authed Openpay payments. This API is IP restricted to allow unauthenticated server side calls.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];


NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible.
OAIOpenpayVoidsRequest* body = [[OAIOpenpayVoidsRequest alloc] init]; // 
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIOpenpayApi*apiInstance = [[OAIOpenpayApi alloc] init];

// Openpay Voids
[apiInstance openpayVoidsPostWithXApiKey:xApiKey
              xJWSSignature:xJWSSignature
              body:body
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAIOpenpayVoidsSuccessResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIOpenpayApi->openpayVoidsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. | 
 **body** | [**OAIOpenpayVoidsRequest***](OAIOpenpayVoidsRequest.md)|  | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAIOpenpayVoidsSuccessResponse***](OAIOpenpayVoidsSuccessResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

