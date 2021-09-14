# OAIPaymentAgreementsApi

All URIs are relative to *https://dev-api.wpay.com.au/wow/v1/pay*

Method | HTTP request | Description
------------- | ------------- | -------------
[**paymentagreementsChargePost**](OAIPaymentAgreementsApi.md#paymentagreementschargepost) | **POST** /paymentagreements/charge | Charge Payment Agreement
[**paymentagreementsPaymentTokenDelete**](OAIPaymentAgreementsApi.md#paymentagreementspaymenttokendelete) | **DELETE** /paymentagreements/{paymentToken} | Delete Payment Agreement
[**paymentagreementsPaymentTokenPost**](OAIPaymentAgreementsApi.md#paymentagreementspaymenttokenpost) | **POST** /paymentagreements/{paymentToken} | Update Payment Agreement
[**paymentagreementsPost**](OAIPaymentAgreementsApi.md#paymentagreementspost) | **POST** /paymentagreements | Create Payment Agreement


# **paymentagreementsChargePost**
```objc
-(NSURLSessionTask*) paymentagreementsChargePostWithXApiKey: (NSString*) xApiKey
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIChargePaymentAgreementRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAIPaymentAgreementResponse* output, NSError* error)) handler;
```

Charge Payment Agreement

Perform charge transaction against a payment agreement. This service will use the provided information to perform the charge transaction. A charge payment is made by the merchant to charge a customer as per their payment agreement. This API is IP restricted to allow unauthenticated server side calls.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];


NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible.
OAIChargePaymentAgreementRequest* body = [[OAIChargePaymentAgreementRequest alloc] init]; // 
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIPaymentAgreementsApi*apiInstance = [[OAIPaymentAgreementsApi alloc] init];

// Charge Payment Agreement
[apiInstance paymentagreementsChargePostWithXApiKey:xApiKey
              xJWSSignature:xJWSSignature
              body:body
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAIPaymentAgreementResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPaymentAgreementsApi->paymentagreementsChargePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. | 
 **body** | [**OAIChargePaymentAgreementRequest***](OAIChargePaymentAgreementRequest.md)|  | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAIPaymentAgreementResponse***](OAIPaymentAgreementResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentagreementsPaymentTokenDelete**
```objc
-(NSURLSessionTask*) paymentagreementsPaymentTokenDeleteWithPaymentToken: (NSString*) paymentToken
    xApiKey: (NSString*) xApiKey
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Delete Payment Agreement

Delete an existing payment agreement. This API is IP restricted to allow unauthenticated server side calls.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];


NSString* paymentToken = @"paymentToken_example"; // The payment token of the payment agreement. The payment token is a unique identifier for the payment agreement.
NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIPaymentAgreementsApi*apiInstance = [[OAIPaymentAgreementsApi alloc] init];

// Delete Payment Agreement
[apiInstance paymentagreementsPaymentTokenDeleteWithPaymentToken:paymentToken
              xApiKey:xApiKey
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPaymentAgreementsApi->paymentagreementsPaymentTokenDelete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentToken** | **NSString***| The payment token of the payment agreement. The payment token is a unique identifier for the payment agreement. | 
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

**NSObject***

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentagreementsPaymentTokenPost**
```objc
-(NSURLSessionTask*) paymentagreementsPaymentTokenPostWithPaymentToken: (NSString*) paymentToken
    xApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIUpdatePaymentAgreementRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAIPaymentAgreementResponse* output, NSError* error)) handler;
```

Update Payment Agreement

Update an existing payment agreement and validate the payment instrument if changed. This API is IP restricted to allow unauthenticated server side calls.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];


NSString* paymentToken = 27e07e4e-58df-4072-8e75-33dd464af667; // The payment token of the payment agreement. The payment token is a unique identifier for the payment agreement.
NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* authorization = Bearer 7M8hv8tqpdfSnsEZIDBzJNo91MHF; // The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present.
OAIUpdatePaymentAgreementRequest* body = [[OAIUpdatePaymentAgreementRequest alloc] init]; // 
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIPaymentAgreementsApi*apiInstance = [[OAIPaymentAgreementsApi alloc] init];

// Update Payment Agreement
[apiInstance paymentagreementsPaymentTokenPostWithPaymentToken:paymentToken
              xApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              body:body
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAIPaymentAgreementResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPaymentAgreementsApi->paymentagreementsPaymentTokenPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentToken** | **NSString***| The payment token of the payment agreement. The payment token is a unique identifier for the payment agreement. | 
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **body** | [**OAIUpdatePaymentAgreementRequest***](OAIUpdatePaymentAgreementRequest.md)|  | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAIPaymentAgreementResponse***](OAIPaymentAgreementResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentagreementsPost**
```objc
-(NSURLSessionTask*) paymentagreementsPostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAICreatePaymentAgreementRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAIPaymentAgreementResponse* output, NSError* error)) handler;
```

Create Payment Agreement

Create a new payment agreement which will be added to the users wallet after validating the payment instrument. This API is IP restricted to allow unauthenticated server side calls.

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
OAICreatePaymentAgreementRequest* body = [[OAICreatePaymentAgreementRequest alloc] init]; // 
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIPaymentAgreementsApi*apiInstance = [[OAIPaymentAgreementsApi alloc] init];

// Create Payment Agreement
[apiInstance paymentagreementsPostWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              body:body
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAIPaymentAgreementResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIPaymentAgreementsApi->paymentagreementsPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **body** | [**OAICreatePaymentAgreementRequest***](OAICreatePaymentAgreementRequest.md)|  | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAIPaymentAgreementResponse***](OAIPaymentAgreementResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

