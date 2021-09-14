# OAIPaymentsApi

All URIs are relative to *https://dev-api.wpay.com.au/wow/v1/pay*

Method | HTTP request | Description
------------- | ------------- | -------------
[**completionsPost**](OAIPaymentsApi.md#completionspost) | **POST** /completions | Completions
[**guestPaymentsPost**](OAIPaymentsApi.md#guestpaymentspost) | **POST** /guest/payments | Guest Payments
[**paymentsPost**](OAIPaymentsApi.md#paymentspost) | **POST** /payments | Payments
[**refundsPost**](OAIPaymentsApi.md#refundspost) | **POST** /refunds | Refunds
[**voidsPost**](OAIPaymentsApi.md#voidspost) | **POST** /voids | Voids


# **completionsPost**
```objc
-(NSURLSessionTask*) completionsPostWithXApiKey: (NSString*) xApiKey
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAICompletionsRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAICompletionsSuccessResponse* output, NSError* error)) handler;
```

Completions

Complete pre-authed payments. This API is IP restricted to allow unauthenticated server side calls.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];


NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible.
OAICompletionsRequest* body = [[OAICompletionsRequest alloc] init]; // 
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIPaymentsApi*apiInstance = [[OAIPaymentsApi alloc] init];

// Completions
[apiInstance completionsPostWithXApiKey:xApiKey
              xJWSSignature:xJWSSignature
              body:body
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAICompletionsSuccessResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPaymentsApi->completionsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. | 
 **body** | [**OAICompletionsRequest***](OAICompletionsRequest.md)|  | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAICompletionsSuccessResponse***](OAICompletionsSuccessResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **guestPaymentsPost**
```objc
-(NSURLSessionTask*) guestPaymentsPostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIPaymentsRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAIPaymentsSuccessResponse* output, NSError* error)) handler;
```

Guest Payments

Make guest payments to a merchant using guest payment intruments.

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
OAIPaymentsRequest* body = [[OAIPaymentsRequest alloc] init]; // 
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIPaymentsApi*apiInstance = [[OAIPaymentsApi alloc] init];

// Guest Payments
[apiInstance guestPaymentsPostWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              body:body
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAIPaymentsSuccessResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPaymentsApi->guestPaymentsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **body** | [**OAIPaymentsRequest***](OAIPaymentsRequest.md)|  | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAIPaymentsSuccessResponse***](OAIPaymentsSuccessResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentsPost**
```objc
-(NSURLSessionTask*) paymentsPostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIPaymentsRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    xEverydayPayWallet: (NSString*) xEverydayPayWallet
        completionHandler: (void (^)(OAIPaymentsSuccessResponse* output, NSError* error)) handler;
```

Payments

Make payments to a merchant using payment intruments.

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
OAIPaymentsRequest* body = [[OAIPaymentsRequest alloc] init]; // 
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
NSString* xEverydayPayWallet = true; // A flag to indicate if the Everyday Pay wallet should be used when processing the API request. Set the header value to \"true\" to use the Everyday Pay wallet. Set the header value to \"false\" or exclude the header completely to use the default merchant wallet. (optional)

OAIPaymentsApi*apiInstance = [[OAIPaymentsApi alloc] init];

// Payments
[apiInstance paymentsPostWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              body:body
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
              xEverydayPayWallet:xEverydayPayWallet
          completionHandler: ^(OAIPaymentsSuccessResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPaymentsApi->paymentsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **body** | [**OAIPaymentsRequest***](OAIPaymentsRequest.md)|  | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 
 **xEverydayPayWallet** | **NSString***| A flag to indicate if the Everyday Pay wallet should be used when processing the API request. Set the header value to \&quot;true\&quot; to use the Everyday Pay wallet. Set the header value to \&quot;false\&quot; or exclude the header completely to use the default merchant wallet. | [optional] 

### Return type

[**OAIPaymentsSuccessResponse***](OAIPaymentsSuccessResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refundsPost**
```objc
-(NSURLSessionTask*) refundsPostWithXApiKey: (NSString*) xApiKey
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIRefundsRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAIRefundsSuccessResponse* output, NSError* error)) handler;
```

Refunds

Refund payments. This API is IP restricted to allow unauthenticated server side calls.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];


NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible.
OAIRefundsRequest* body = [[OAIRefundsRequest alloc] init]; // 
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIPaymentsApi*apiInstance = [[OAIPaymentsApi alloc] init];

// Refunds
[apiInstance refundsPostWithXApiKey:xApiKey
              xJWSSignature:xJWSSignature
              body:body
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAIRefundsSuccessResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPaymentsApi->refundsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. | 
 **body** | [**OAIRefundsRequest***](OAIRefundsRequest.md)|  | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAIRefundsSuccessResponse***](OAIRefundsSuccessResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **voidsPost**
```objc
-(NSURLSessionTask*) voidsPostWithXApiKey: (NSString*) xApiKey
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIVoidsRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAIVoidsSuccessResponse* output, NSError* error)) handler;
```

Voids

Void (cancel) pre-authed payments. This API is IP restricted to allow unauthenticated server side calls.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];


NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible.
OAIVoidsRequest* body = [[OAIVoidsRequest alloc] init]; // 
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIPaymentsApi*apiInstance = [[OAIPaymentsApi alloc] init];

// Voids
[apiInstance voidsPostWithXApiKey:xApiKey
              xJWSSignature:xJWSSignature
              body:body
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAIVoidsSuccessResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPaymentsApi->voidsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. | 
 **body** | [**OAIVoidsRequest***](OAIVoidsRequest.md)|  | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAIVoidsSuccessResponse***](OAIVoidsSuccessResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

