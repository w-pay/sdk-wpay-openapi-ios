# OAIMerchantApi

All URIs are relative to *https://dev-api.wpay.com.au/wow/v1/pay*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelPaymentRequestQRCode**](OAIMerchantApi.md#cancelpaymentrequestqrcode) | **DELETE** /instore/merchant/qr/{qrId} | Invalidate QR Code
[**chargeMerchantPaymentAgreement**](OAIMerchantApi.md#chargemerchantpaymentagreement) | **PUT** /instore/merchant/payments/agreements/{paymentToken} | Charge Payment Agreement
[**createMerchantSchema**](OAIMerchantApi.md#createmerchantschema) | **POST** /instore/merchant/schema | Add Schema
[**createPaymentRequest**](OAIMerchantApi.md#createpaymentrequest) | **POST** /instore/merchant/payments | Create Payment
[**createPaymentRequestQRCode**](OAIMerchantApi.md#createpaymentrequestqrcode) | **POST** /instore/merchant/qr | Create QR Code for a payment request
[**createPaymentSession**](OAIMerchantApi.md#createpaymentsession) | **POST** /instore/merchant/payment/session | Create Payment Session
[**deleteMerchantPaymentAgreement**](OAIMerchantApi.md#deletemerchantpaymentagreement) | **DELETE** /instore/merchant/payments/agreements/{paymentToken} | Delete Payment Agreement
[**deleteMerchantPaymentRequest**](OAIMerchantApi.md#deletemerchantpaymentrequest) | **DELETE** /instore/merchant/payments/{paymentRequestId} | Delete Payment Request
[**deletePaymentSession**](OAIMerchantApi.md#deletepaymentsession) | **DELETE** /instore/merchant/payment/session/{paymentSessionId} | Delete Payment Session
[**getMerchantPaymentDetails**](OAIMerchantApi.md#getmerchantpaymentdetails) | **GET** /instore/merchant/payments/{paymentRequestId} | Get Payment Details
[**getMerchantPayments**](OAIMerchantApi.md#getmerchantpayments) | **GET** /instore/merchant/payments | Get Payment List
[**getMerchantPreferences**](OAIMerchantApi.md#getmerchantpreferences) | **GET** /instore/merchant/preferences | Get Preferences
[**getMerchantSchemaDetails**](OAIMerchantApi.md#getmerchantschemadetails) | **GET** /instore/merchant/schema/{schemaId} | Get Schema Details
[**getMerchantSchemas**](OAIMerchantApi.md#getmerchantschemas) | **GET** /instore/merchant/schema | Get Schema List
[**getMerchantTransactionDetails**](OAIMerchantApi.md#getmerchanttransactiondetails) | **GET** /instore/merchant/transactions/{transactionId} | Get Transaction Details
[**getMerchantTransactions**](OAIMerchantApi.md#getmerchanttransactions) | **GET** /instore/merchant/transactions | Get Transaction List
[**getPaymentRequestQRCodeContent**](OAIMerchantApi.md#getpaymentrequestqrcodecontent) | **GET** /instore/merchant/qr/{qrId} | Get QR Code Content
[**getPaymentSession**](OAIMerchantApi.md#getpaymentsession) | **GET** /instore/merchant/payment/session/{paymentSessionId} | Get Payment Session
[**instoreMerchantTransactionsTransactionIdCompletionPost**](OAIMerchantApi.md#instoremerchanttransactionstransactionidcompletionpost) | **POST** /instore/merchant/transactions/{transactionId}/completion | Completions
[**instoreMerchantTransactionsTransactionIdVoidPost**](OAIMerchantApi.md#instoremerchanttransactionstransactionidvoidpost) | **POST** /instore/merchant/transactions/{transactionId}/void | Voids
[**merchantUpdatePaymentSession**](OAIMerchantApi.md#merchantupdatepaymentsession) | **POST** /instore/merchant/payment/session/{paymentSessionId} | Update Payment Session
[**refundMerchantTransaction**](OAIMerchantApi.md#refundmerchanttransaction) | **POST** /instore/merchant/transactions/{transactionId}/refund | Refund Transaction
[**setMerchantPreferences**](OAIMerchantApi.md#setmerchantpreferences) | **POST** /instore/merchant/preferences | Set Preferences


# **cancelPaymentRequestQRCode**
```objc
-(NSURLSessionTask*) cancelPaymentRequestQRCodeWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    qrId: (NSString*) qrId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(NSError* error)) handler;
```

Invalidate QR Code

Cancel an existing QC code.  Effectively expires the QR code

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
NSString* qrId = dca8edc5-bbb7-44c0-8056-a5daf4327601; // The ID of the specific QR Code
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIMerchantApi*apiInstance = [[OAIMerchantApi alloc] init];

// Invalidate QR Code
[apiInstance cancelPaymentRequestQRCodeWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              qrId:qrId
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIMerchantApi->cancelPaymentRequestQRCode: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **qrId** | **NSString***| The ID of the specific QR Code | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chargeMerchantPaymentAgreement**
```objc
-(NSURLSessionTask*) chargeMerchantPaymentAgreementWithXMerchantID: (NSString*) xMerchantID
    paymentToken: (NSString*) paymentToken
    merchantChargePaymentAgreementRequest: (OAIMerchantChargePaymentAgreementRequest*) merchantChargePaymentAgreementRequest
        completionHandler: (void (^)(OAIChargePaymentAgreementResponse* output, NSError* error)) handler;
```

Charge Payment Agreement

Charge a payment agreement

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];


NSString* xMerchantID = 10001; // 
NSString* paymentToken = @"paymentToken_example"; // The ID of the specific payment agreement
OAIMerchantChargePaymentAgreementRequest* merchantChargePaymentAgreementRequest = [[OAIMerchantChargePaymentAgreementRequest alloc] init]; // 

OAIMerchantApi*apiInstance = [[OAIMerchantApi alloc] init];

// Charge Payment Agreement
[apiInstance chargeMerchantPaymentAgreementWithXMerchantID:xMerchantID
              paymentToken:paymentToken
              merchantChargePaymentAgreementRequest:merchantChargePaymentAgreementRequest
          completionHandler: ^(OAIChargePaymentAgreementResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMerchantApi->chargeMerchantPaymentAgreement: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xMerchantID** | **NSString***|  | 
 **paymentToken** | **NSString***| The ID of the specific payment agreement | 
 **merchantChargePaymentAgreementRequest** | [**OAIMerchantChargePaymentAgreementRequest***](OAIMerchantChargePaymentAgreementRequest.md)|  | 

### Return type

[**OAIChargePaymentAgreementResponse***](OAIChargePaymentAgreementResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMerchantSchema**
```objc
-(NSURLSessionTask*) createMerchantSchemaWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    merchantSchema: (OAIMerchantSchema*) merchantSchema
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAICreateMerchantSchemaResults* output, NSError* error)) handler;
```

Add Schema

Add a new schema that can be used in schema based payloads for this merchant

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
OAIMerchantSchema* merchantSchema = [[OAIMerchantSchema alloc] init]; // 
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIMerchantApi*apiInstance = [[OAIMerchantApi alloc] init];

// Add Schema
[apiInstance createMerchantSchemaWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              merchantSchema:merchantSchema
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAICreateMerchantSchemaResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMerchantApi->createMerchantSchema: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **merchantSchema** | [**OAIMerchantSchema***](OAIMerchantSchema.md)|  | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAICreateMerchantSchemaResults***](OAICreateMerchantSchemaResults.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPaymentRequest**
```objc
-(NSURLSessionTask*) createPaymentRequestWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    merchantPaymentRequest: (OAIMerchantPaymentRequest*) merchantPaymentRequest
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAICreatePaymentRequestResults* output, NSError* error)) handler;
```

Create Payment

Create a new payment request that can then be presented to a customer for payment

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
OAIMerchantPaymentRequest* merchantPaymentRequest = [[OAIMerchantPaymentRequest alloc] init]; // 
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIMerchantApi*apiInstance = [[OAIMerchantApi alloc] init];

// Create Payment
[apiInstance createPaymentRequestWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              merchantPaymentRequest:merchantPaymentRequest
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAICreatePaymentRequestResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMerchantApi->createPaymentRequest: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **merchantPaymentRequest** | [**OAIMerchantPaymentRequest***](OAIMerchantPaymentRequest.md)|  | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAICreatePaymentRequestResults***](OAICreatePaymentRequestResults.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPaymentRequestQRCode**
```objc
-(NSURLSessionTask*) createPaymentRequestQRCodeWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    paymentQRCodeDetails: (OAIPaymentQRCodeDetails*) paymentQRCodeDetails
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAICreatePaymentRequestQRCodeResults* output, NSError* error)) handler;
```

Create QR Code for a payment request

Create a new QR code for an existing payment request

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
OAIPaymentQRCodeDetails* paymentQRCodeDetails = [[OAIPaymentQRCodeDetails alloc] init]; // 
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIMerchantApi*apiInstance = [[OAIMerchantApi alloc] init];

// Create QR Code for a payment request
[apiInstance createPaymentRequestQRCodeWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              paymentQRCodeDetails:paymentQRCodeDetails
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAICreatePaymentRequestQRCodeResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMerchantApi->createPaymentRequestQRCode: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **paymentQRCodeDetails** | [**OAIPaymentQRCodeDetails***](OAIPaymentQRCodeDetails.md)|  | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAICreatePaymentRequestQRCodeResults***](OAICreatePaymentRequestQRCodeResults.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPaymentSession**
```objc
-(NSURLSessionTask*) createPaymentSessionWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    createPaymentSessionRequest: (OAICreatePaymentSessionRequest*) createPaymentSessionRequest
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAICreateMerchantPaymentSessionResponse* output, NSError* error)) handler;
```

Create Payment Session

Create a new payment session

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
OAICreatePaymentSessionRequest* createPaymentSessionRequest = [[OAICreatePaymentSessionRequest alloc] init]; // 
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIMerchantApi*apiInstance = [[OAIMerchantApi alloc] init];

// Create Payment Session
[apiInstance createPaymentSessionWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              createPaymentSessionRequest:createPaymentSessionRequest
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAICreateMerchantPaymentSessionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMerchantApi->createPaymentSession: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **createPaymentSessionRequest** | [**OAICreatePaymentSessionRequest***](OAICreatePaymentSessionRequest.md)|  | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAICreateMerchantPaymentSessionResponse***](OAICreateMerchantPaymentSessionResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMerchantPaymentAgreement**
```objc
-(NSURLSessionTask*) deleteMerchantPaymentAgreementWithXMerchantID: (NSString*) xMerchantID
    paymentToken: (NSString*) paymentToken
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete Payment Agreement

Delete an existing payment agreement.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];


NSString* xMerchantID = 10001; // 
NSString* paymentToken = @"paymentToken_example"; // The ID of the specific payment agreement

OAIMerchantApi*apiInstance = [[OAIMerchantApi alloc] init];

// Delete Payment Agreement
[apiInstance deleteMerchantPaymentAgreementWithXMerchantID:xMerchantID
              paymentToken:paymentToken
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIMerchantApi->deleteMerchantPaymentAgreement: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xMerchantID** | **NSString***|  | 
 **paymentToken** | **NSString***| The ID of the specific payment agreement | 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMerchantPaymentRequest**
```objc
-(NSURLSessionTask*) deleteMerchantPaymentRequestWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    paymentRequestId: (NSString*) paymentRequestId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete Payment Request

Cancel an existing payment by setting the expiration date/time to now and setting the remaining uses to 0.  Will only be successful if the payment is still pending.  Completed payments need to be refunded using the dedicated API for that purpose

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
NSString* paymentRequestId = @"paymentRequestId_example"; // The ID of the specific payment request
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIMerchantApi*apiInstance = [[OAIMerchantApi alloc] init];

// Delete Payment Request
[apiInstance deleteMerchantPaymentRequestWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              paymentRequestId:paymentRequestId
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIMerchantApi->deleteMerchantPaymentRequest: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **paymentRequestId** | **NSString***| The ID of the specific payment request | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePaymentSession**
```objc
-(NSURLSessionTask*) deletePaymentSessionWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    paymentSessionId: (NSString*) paymentSessionId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete Payment Session

Deletes a payment session by setting its expiration date/time to now

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
NSString* paymentSessionId = @"paymentSessionId_example"; // The ID of the specific payment session to delete
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIMerchantApi*apiInstance = [[OAIMerchantApi alloc] init];

// Delete Payment Session
[apiInstance deletePaymentSessionWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              paymentSessionId:paymentSessionId
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIMerchantApi->deletePaymentSession: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **paymentSessionId** | **NSString***| The ID of the specific payment session to delete | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMerchantPaymentDetails**
```objc
-(NSURLSessionTask*) getMerchantPaymentDetailsWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    paymentRequestId: (NSString*) paymentRequestId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAIGetMerchantPaymentDetailsResults* output, NSError* error)) handler;
```

Get Payment Details

Get the details for a specific payment.  Provides all types of payments and all payment content

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
NSString* paymentRequestId = @"paymentRequestId_example"; // The ID of the specific payment request
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIMerchantApi*apiInstance = [[OAIMerchantApi alloc] init];

// Get Payment Details
[apiInstance getMerchantPaymentDetailsWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              paymentRequestId:paymentRequestId
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAIGetMerchantPaymentDetailsResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMerchantApi->getMerchantPaymentDetails: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **paymentRequestId** | **NSString***| The ID of the specific payment request | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAIGetMerchantPaymentDetailsResults***](OAIGetMerchantPaymentDetailsResults.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMerchantPayments**
```objc
-(NSURLSessionTask*) getMerchantPaymentsWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    type: (NSString*) type
    pageSize: (NSNumber*) pageSize
    page: (NSNumber*) page
        completionHandler: (void (^)(OAIGetMerchantPaymentsResults* output, NSError* error)) handler;
```

Get Payment List

Get a list of the payments initiated by the merchant, both pending and complete

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
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
NSString* type = ACTIVE; // The type of payment requests to return: active, inactive or both (optional) (default to @"ACTIVE")
NSNumber* pageSize = @25; // The number of records to return for this page.  Defaults to 25 if absent (optional) (default to @25)
NSNumber* page = @1; // The page of results to return with 1 indicating the first page.  Defaults to 1 if absent (optional) (default to @1)

OAIMerchantApi*apiInstance = [[OAIMerchantApi alloc] init];

// Get Payment List
[apiInstance getMerchantPaymentsWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
              type:type
              pageSize:pageSize
              page:page
          completionHandler: ^(OAIGetMerchantPaymentsResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMerchantApi->getMerchantPayments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 
 **type** | **NSString***| The type of payment requests to return: active, inactive or both | [optional] [default to @&quot;ACTIVE&quot;]
 **pageSize** | **NSNumber***| The number of records to return for this page.  Defaults to 25 if absent | [optional] [default to @25]
 **page** | **NSNumber***| The page of results to return with 1 indicating the first page.  Defaults to 1 if absent | [optional] [default to @1]

### Return type

[**OAIGetMerchantPaymentsResults***](OAIGetMerchantPaymentsResults.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMerchantPreferences**
```objc
-(NSURLSessionTask*) getMerchantPreferencesWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAIMerchantPreferencesResult* output, NSError* error)) handler;
```

Get Preferences

Get the preferences previously set by the customer or merchant (depending on calling identity)

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
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIMerchantApi*apiInstance = [[OAIMerchantApi alloc] init];

// Get Preferences
[apiInstance getMerchantPreferencesWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAIMerchantPreferencesResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMerchantApi->getMerchantPreferences: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAIMerchantPreferencesResult***](OAIMerchantPreferencesResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMerchantSchemaDetails**
```objc
-(NSURLSessionTask*) getMerchantSchemaDetailsWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    schemaId: (NSString*) schemaId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAIMerchantSchemaDetailsResult* output, NSError* error)) handler;
```

Get Schema Details

Get the list of currently usable schema previously added for the merchant

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
NSString* schemaId = @"schemaId_example"; // The ID of the specific schema to get details for
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIMerchantApi*apiInstance = [[OAIMerchantApi alloc] init];

// Get Schema Details
[apiInstance getMerchantSchemaDetailsWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              schemaId:schemaId
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAIMerchantSchemaDetailsResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMerchantApi->getMerchantSchemaDetails: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **schemaId** | **NSString***| The ID of the specific schema to get details for | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAIMerchantSchemaDetailsResult***](OAIMerchantSchemaDetailsResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMerchantSchemas**
```objc
-(NSURLSessionTask*) getMerchantSchemasWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAIMerchantSchemaResult* output, NSError* error)) handler;
```

Get Schema List

Get the list of currently usable schema previously added for the merchant

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
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIMerchantApi*apiInstance = [[OAIMerchantApi alloc] init];

// Get Schema List
[apiInstance getMerchantSchemasWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAIMerchantSchemaResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMerchantApi->getMerchantSchemas: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAIMerchantSchemaResult***](OAIMerchantSchemaResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMerchantTransactionDetails**
```objc
-(NSURLSessionTask*) getMerchantTransactionDetailsWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    transactionId: (NSString*) transactionId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAIGetMerchantTransactionDetailsResults* output, NSError* error)) handler;
```

Get Transaction Details

Get the details for a specific transaction previously executed with the merchant.  Note that amounts are relative to the merchant.  A positive amount is a positive amount transferred to a merchant

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
NSString* transactionId = @"transactionId_example"; // The ID of the specific transaction
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIMerchantApi*apiInstance = [[OAIMerchantApi alloc] init];

// Get Transaction Details
[apiInstance getMerchantTransactionDetailsWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              transactionId:transactionId
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAIGetMerchantTransactionDetailsResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMerchantApi->getMerchantTransactionDetails: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **transactionId** | **NSString***| The ID of the specific transaction | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAIGetMerchantTransactionDetailsResults***](OAIGetMerchantTransactionDetailsResults.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMerchantTransactions**
```objc
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
        completionHandler: (void (^)(OAIGetMerchantTransactionsResults* output, NSError* error)) handler;
```

Get Transaction List

Get a list of the previously executed transactions with the merchant.  Note that amounts are relative to the merchant.  A positive amount is a positive amount transferred to a merchant

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
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
NSDate* startTime = 2017-11-06T19:38:09.890+11:00; // If present, the date/time to limit transactions returned.  Transactions older than this time will not be returned (optional)
NSDate* endTime = 2017-11-06T19:38:09.890+11:00; // If present, the date/time to limit transactions returned.  Transactions newer than this time will not be returned (optional)
NSNumber* pageSize = @25; // The number of records to return for this page.  Defaults to 25 if absent (optional) (default to @25)
NSNumber* page = @1; // The page of results to return with 1 indicating the first page.  Defaults to 1 if absent (optional) (default to @1)

OAIMerchantApi*apiInstance = [[OAIMerchantApi alloc] init];

// Get Transaction List
[apiInstance getMerchantTransactionsWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
              startTime:startTime
              endTime:endTime
              pageSize:pageSize
              page:page
          completionHandler: ^(OAIGetMerchantTransactionsResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMerchantApi->getMerchantTransactions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 
 **startTime** | **NSDate***| If present, the date/time to limit transactions returned.  Transactions older than this time will not be returned | [optional] 
 **endTime** | **NSDate***| If present, the date/time to limit transactions returned.  Transactions newer than this time will not be returned | [optional] 
 **pageSize** | **NSNumber***| The number of records to return for this page.  Defaults to 25 if absent | [optional] [default to @25]
 **page** | **NSNumber***| The page of results to return with 1 indicating the first page.  Defaults to 1 if absent | [optional] [default to @1]

### Return type

[**OAIGetMerchantTransactionsResults***](OAIGetMerchantTransactionsResults.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaymentRequestQRCodeContent**
```objc
-(NSURLSessionTask*) getPaymentRequestQRCodeContentWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    qrId: (NSString*) qrId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAICreatePaymentRequestQRCodeResults* output, NSError* error)) handler;
```

Get QR Code Content

Obtain the content or an image for an existing QR code.  If requested content type is application/json then a payload will be returned.  if requested content is image/png an image will be returned

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
NSString* qrId = @"qrId_example"; // The ID of the specific QR Code
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIMerchantApi*apiInstance = [[OAIMerchantApi alloc] init];

// Get QR Code Content
[apiInstance getPaymentRequestQRCodeContentWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              qrId:qrId
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAICreatePaymentRequestQRCodeResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMerchantApi->getPaymentRequestQRCodeContent: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **qrId** | **NSString***| The ID of the specific QR Code | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAICreatePaymentRequestQRCodeResults***](OAICreatePaymentRequestQRCodeResults.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaymentSession**
```objc
-(NSURLSessionTask*) getPaymentSessionWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    paymentSessionId: (NSString*) paymentSessionId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAICustomerPaymentSessionResult* output, NSError* error)) handler;
```

Get Payment Session

Get the details of a payment session

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
NSString* paymentSessionId = @"paymentSessionId_example"; // The ID of the specific payment session to retrieve
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIMerchantApi*apiInstance = [[OAIMerchantApi alloc] init];

// Get Payment Session
[apiInstance getPaymentSessionWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              paymentSessionId:paymentSessionId
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAICustomerPaymentSessionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMerchantApi->getPaymentSession: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **paymentSessionId** | **NSString***| The ID of the specific payment session to retrieve | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAICustomerPaymentSessionResult***](OAICustomerPaymentSessionResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instoreMerchantTransactionsTransactionIdCompletionPost**
```objc
-(NSURLSessionTask*) instoreMerchantTransactionsTransactionIdCompletionPostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    transactionId: (NSString*) transactionId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    inlineObject: (OAIInlineObject*) inlineObject
        completionHandler: (void (^)(OAIMerchantTransactionResults* output, NSError* error)) handler;
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
NSString* authorization = Bearer 7M8hv8tqpdfSnsEZIDBzJNo91MHF; // The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present.
NSString* transactionId = @"transactionId_example"; // The ID of the transaction to operate on
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
OAIInlineObject* inlineObject = [[OAIInlineObject alloc] init]; //  (optional)

OAIMerchantApi*apiInstance = [[OAIMerchantApi alloc] init];

// Completions
[apiInstance instoreMerchantTransactionsTransactionIdCompletionPostWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              transactionId:transactionId
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
              inlineObject:inlineObject
          completionHandler: ^(OAIMerchantTransactionResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMerchantApi->instoreMerchantTransactionsTransactionIdCompletionPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **transactionId** | **NSString***| The ID of the transaction to operate on | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 
 **inlineObject** | [**OAIInlineObject***](OAIInlineObject.md)|  | [optional] 

### Return type

[**OAIMerchantTransactionResults***](OAIMerchantTransactionResults.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instoreMerchantTransactionsTransactionIdVoidPost**
```objc
-(NSURLSessionTask*) instoreMerchantTransactionsTransactionIdVoidPostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    transactionId: (NSString*) transactionId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    inlineObject1: (OAIInlineObject1*) inlineObject1
        completionHandler: (void (^)(OAIMerchantTransactionResults* output, NSError* error)) handler;
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
NSString* authorization = Bearer 7M8hv8tqpdfSnsEZIDBzJNo91MHF; // The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present.
NSString* transactionId = @"transactionId_example"; // The ID of the transaction to operate on
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
OAIInlineObject1* inlineObject1 = [[OAIInlineObject1 alloc] init]; //  (optional)

OAIMerchantApi*apiInstance = [[OAIMerchantApi alloc] init];

// Voids
[apiInstance instoreMerchantTransactionsTransactionIdVoidPostWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              transactionId:transactionId
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
              inlineObject1:inlineObject1
          completionHandler: ^(OAIMerchantTransactionResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMerchantApi->instoreMerchantTransactionsTransactionIdVoidPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **transactionId** | **NSString***| The ID of the transaction to operate on | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 
 **inlineObject1** | [**OAIInlineObject1***](OAIInlineObject1.md)|  | [optional] 

### Return type

[**OAIMerchantTransactionResults***](OAIMerchantTransactionResults.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **merchantUpdatePaymentSession**
```objc
-(NSURLSessionTask*) merchantUpdatePaymentSessionWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    paymentSessionId: (NSString*) paymentSessionId
    updatePaymentSessionRequest1: (OAIUpdatePaymentSessionRequest1*) updatePaymentSessionRequest1
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(NSError* error)) handler;
```

Update Payment Session

Update the payment session details

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
NSString* paymentSessionId = @"paymentSessionId_example"; // The ID of the specific payment session to retrieve
OAIUpdatePaymentSessionRequest1* updatePaymentSessionRequest1 = [[OAIUpdatePaymentSessionRequest1 alloc] init]; // 
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIMerchantApi*apiInstance = [[OAIMerchantApi alloc] init];

// Update Payment Session
[apiInstance merchantUpdatePaymentSessionWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              paymentSessionId:paymentSessionId
              updatePaymentSessionRequest1:updatePaymentSessionRequest1
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIMerchantApi->merchantUpdatePaymentSession: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **paymentSessionId** | **NSString***| The ID of the specific payment session to retrieve | 
 **updatePaymentSessionRequest1** | [**OAIUpdatePaymentSessionRequest1***](OAIUpdatePaymentSessionRequest1.md)|  | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refundMerchantTransaction**
```objc
-(NSURLSessionTask*) refundMerchantTransactionWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    transactionId: (NSString*) transactionId
    refundMerchantTransactionRequest: (OAIRefundMerchantTransactionRequest*) refundMerchantTransactionRequest
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAIMerchantTransactionResults* output, NSError* error)) handler;
```

Refund Transaction

Refund a previously executed transaction

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
NSString* transactionId = @"transactionId_example"; // The ID of the specific transaction to reverse
OAIRefundMerchantTransactionRequest* refundMerchantTransactionRequest = [[OAIRefundMerchantTransactionRequest alloc] init]; // 
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIMerchantApi*apiInstance = [[OAIMerchantApi alloc] init];

// Refund Transaction
[apiInstance refundMerchantTransactionWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              transactionId:transactionId
              refundMerchantTransactionRequest:refundMerchantTransactionRequest
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAIMerchantTransactionResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIMerchantApi->refundMerchantTransaction: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **transactionId** | **NSString***| The ID of the specific transaction to reverse | 
 **refundMerchantTransactionRequest** | [**OAIRefundMerchantTransactionRequest***](OAIRefundMerchantTransactionRequest.md)|  | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAIMerchantTransactionResults***](OAIMerchantTransactionResults.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setMerchantPreferences**
```objc
-(NSURLSessionTask*) setMerchantPreferencesWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    merchantPreferences: (OAIMerchantPreferences*) merchantPreferences
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(NSError* error)) handler;
```

Set Preferences

Change the preferences for the customer or merchant (depending on calling identity)

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
OAIMerchantPreferences* merchantPreferences = [[OAIMerchantPreferences alloc] init]; // 
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAIMerchantApi*apiInstance = [[OAIMerchantApi alloc] init];

// Set Preferences
[apiInstance setMerchantPreferencesWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              merchantPreferences:merchantPreferences
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAIMerchantApi->setMerchantPreferences: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **merchantPreferences** | [**OAIMerchantPreferences***](OAIMerchantPreferences.md)|  | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

