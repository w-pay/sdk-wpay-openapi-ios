# OAICustomerApi

All URIs are relative to *https://dev-api.wpay.com.au/wow/v1/pay*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acceptCustomerTermsAndConditions**](OAICustomerApi.md#acceptcustomertermsandconditions) | **POST** /instore/customer/termsandconditions/acceptance | Agree to T&amp;Cs
[**createCustomerPaymentAgreement**](OAICustomerApi.md#createcustomerpaymentagreement) | **POST** /instore/customer/payments/agreements | Create Payment Agreement
[**customerUpdatePaymentSession**](OAICustomerApi.md#customerupdatepaymentsession) | **POST** /instore/customer/payment/session/{paymentSessionId} | Update Payment Session
[**deleteCustomerPaymentSession**](OAICustomerApi.md#deletecustomerpaymentsession) | **DELETE** /instore/customer/payment/session/{paymentSessionId} | Delete Payment Session
[**deletePaymentInstrument**](OAICustomerApi.md#deletepaymentinstrument) | **DELETE** /instore/customer/instruments/{paymentInstrumentId} | Delete a payment instrument
[**getCustomerPaymentInstrument**](OAICustomerApi.md#getcustomerpaymentinstrument) | **GET** /instore/customer/instruments/{paymentInstrumentId} | Get Payment Instrument
[**getCustomerPaymentInstruments**](OAICustomerApi.md#getcustomerpaymentinstruments) | **GET** /instore/customer/instruments | Get Payment Instruments
[**getCustomerPaymentRequestDetailsByPaymentId**](OAICustomerApi.md#getcustomerpaymentrequestdetailsbypaymentid) | **GET** /instore/customer/payments/{paymentRequestId} | Get Payment Request details
[**getCustomerPaymentRequestDetailsByQRCodeId**](OAICustomerApi.md#getcustomerpaymentrequestdetailsbyqrcodeid) | **GET** /instore/customer/qr/{qrId} | Get Payment Request details from a QR code
[**getCustomerPaymentSession**](OAICustomerApi.md#getcustomerpaymentsession) | **GET** /instore/customer/payment/session/{paymentSessionId} | Get Payment Session
[**getCustomerPaymentSessionByQRCodeId**](OAICustomerApi.md#getcustomerpaymentsessionbyqrcodeid) | **GET** /instore/customer/payment/session/qr/{qrId} | Get Payment Session
[**getCustomerPreferences**](OAICustomerApi.md#getcustomerpreferences) | **GET** /instore/customer/preferences | Get Preferences
[**getCustomerTermsAndConditionsAcceptance**](OAICustomerApi.md#getcustomertermsandconditionsacceptance) | **GET** /instore/customer/termsandconditions/acceptance | Get Customer Terms and Conditions acceptance
[**getCustomerTransactionDetails**](OAICustomerApi.md#getcustomertransactiondetails) | **GET** /instore/customer/transactions/{transactionId} | Get Transaction Details
[**getCustomerTransactions**](OAICustomerApi.md#getcustomertransactions) | **GET** /instore/customer/transactions | Get Transaction List
[**getPaymentAgreement**](OAICustomerApi.md#getpaymentagreement) | **GET** /instore/customer/payments/agreements/{paymentToken} | Get Payment Agreement
[**getPaymentAgreementList**](OAICustomerApi.md#getpaymentagreementlist) | **GET** /instore/customer/payments/agreements | Get Payment Agreements
[**initiatePaymentInstrumentAddition**](OAICustomerApi.md#initiatepaymentinstrumentaddition) | **POST** /instore/customer/instruments | Initiate Instrument Addition
[**makeCustomerPayment**](OAICustomerApi.md#makecustomerpayment) | **PUT** /instore/customer/payments/{paymentRequestId} | Pay Payment
[**makeImmediateCustomerPayments**](OAICustomerApi.md#makeimmediatecustomerpayments) | **POST** /instore/customer/payments | Immediate Customer Payments
[**preApprovePaymentSession**](OAICustomerApi.md#preapprovepaymentsession) | **PUT** /instore/customer/payment/session/{paymentSessionId} | Pre-Approve payment
[**setCustomerPreferences**](OAICustomerApi.md#setcustomerpreferences) | **POST** /instore/customer/preferences | Set Preferences
[**updateCustomerPaymentAgreement**](OAICustomerApi.md#updatecustomerpaymentagreement) | **POST** /instore/customer/payments/agreements/{paymentToken} | Update Payment Agreement


# **acceptCustomerTermsAndConditions**
```objc
-(NSURLSessionTask*) acceptCustomerTermsAndConditionsWithXWalletID: (NSString*) xWalletID
    customerTermsAndConditions: (OAICustomerTermsAndConditions*) customerTermsAndConditions
        completionHandler: (void (^)(NSError* error)) handler;
```

Agree to T&Cs

Customer accepts terms and conditions

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];
// Configure HTTP basic authorization (authentication scheme: bearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* xWalletID = bb8f86af-9e7b-4659-85d5-346b5e99d500; // 
OAICustomerTermsAndConditions* customerTermsAndConditions = [[OAICustomerTermsAndConditions alloc] init]; // 

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

// Agree to T&Cs
[apiInstance acceptCustomerTermsAndConditionsWithXWalletID:xWalletID
              customerTermsAndConditions:customerTermsAndConditions
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->acceptCustomerTermsAndConditions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xWalletID** | **NSString***|  | 
 **customerTermsAndConditions** | [**OAICustomerTermsAndConditions***](OAICustomerTermsAndConditions.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCustomerPaymentAgreement**
```objc
-(NSURLSessionTask*) createCustomerPaymentAgreementWithXWalletID: (NSString*) xWalletID
    customerCreatePaymentAgreementRequest: (OAICustomerCreatePaymentAgreementRequest*) customerCreatePaymentAgreementRequest
        completionHandler: (void (^)(OAICustomerPaymentAgreementResponse* output, NSError* error)) handler;
```

Create Payment Agreement

Create an new payment agreement

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];
// Configure HTTP basic authorization (authentication scheme: bearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* xWalletID = bb8f86af-9e7b-4659-85d5-346b5e99d500; // 
OAICustomerCreatePaymentAgreementRequest* customerCreatePaymentAgreementRequest = [[OAICustomerCreatePaymentAgreementRequest alloc] init]; // 

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

// Create Payment Agreement
[apiInstance createCustomerPaymentAgreementWithXWalletID:xWalletID
              customerCreatePaymentAgreementRequest:customerCreatePaymentAgreementRequest
          completionHandler: ^(OAICustomerPaymentAgreementResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->createCustomerPaymentAgreement: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xWalletID** | **NSString***|  | 
 **customerCreatePaymentAgreementRequest** | [**OAICustomerCreatePaymentAgreementRequest***](OAICustomerCreatePaymentAgreementRequest.md)|  | 

### Return type

[**OAICustomerPaymentAgreementResponse***](OAICustomerPaymentAgreementResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerUpdatePaymentSession**
```objc
-(NSURLSessionTask*) customerUpdatePaymentSessionWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    paymentSessionId: (NSString*) paymentSessionId
    updatePaymentSessionRequest: (OAIUpdatePaymentSessionRequest*) updatePaymentSessionRequest
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
// Configure HTTP basic authorization (authentication scheme: bearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* authorization = Bearer 7M8hv8tqpdfSnsEZIDBzJNo91MHF; // The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present.
NSString* paymentSessionId = @"paymentSessionId_example"; // The ID of the specific payment session to retrieve
OAIUpdatePaymentSessionRequest* updatePaymentSessionRequest = [[OAIUpdatePaymentSessionRequest alloc] init]; // 
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

// Update Payment Session
[apiInstance customerUpdatePaymentSessionWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              paymentSessionId:paymentSessionId
              updatePaymentSessionRequest:updatePaymentSessionRequest
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->customerUpdatePaymentSession: %@", error);
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
 **updatePaymentSessionRequest** | [**OAIUpdatePaymentSessionRequest***](OAIUpdatePaymentSessionRequest.md)|  | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomerPaymentSession**
```objc
-(NSURLSessionTask*) deleteCustomerPaymentSessionWithXApiKey: (NSString*) xApiKey
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

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

// Delete Payment Session
[apiInstance deleteCustomerPaymentSessionWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              paymentSessionId:paymentSessionId
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->deleteCustomerPaymentSession: %@", error);
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

# **deletePaymentInstrument**
```objc
-(NSURLSessionTask*) deletePaymentInstrumentWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    paymentInstrumentId: (NSString*) paymentInstrumentId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(NSError* error)) handler;
```

Delete a payment instrument

Delete an existing payment instrument

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];
// Configure HTTP basic authorization (authentication scheme: bearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* authorization = Bearer 7M8hv8tqpdfSnsEZIDBzJNo91MHF; // The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present.
NSString* paymentInstrumentId = @"paymentInstrumentId_example"; // The ID of the specific instrument
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

// Delete a payment instrument
[apiInstance deletePaymentInstrumentWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              paymentInstrumentId:paymentInstrumentId
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->deletePaymentInstrument: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **paymentInstrumentId** | **NSString***| The ID of the specific instrument | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerPaymentInstrument**
```objc
-(NSURLSessionTask*) getCustomerPaymentInstrumentWithPaymentInstrumentId: (NSString*) paymentInstrumentId
    xApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    xEverydayPayWallet: (NSString*) xEverydayPayWallet
    publicKey: (NSString*) publicKey
        completionHandler: (void (^)(OAIGetCustomerPaymentInstrumentResult* output, NSError* error)) handler;
```

Get Payment Instrument

Get the specified payment instrument of the customer. Returns the payment instrument data and optionally the sensitive data (encrypted in the response) of an instrument record

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];
// Configure HTTP basic authorization (authentication scheme: bearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* paymentInstrumentId = 712029a1-c0aa-41bc-a810-3d42424c5834; // The ID of the specific instrument
NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* authorization = Bearer 7M8hv8tqpdfSnsEZIDBzJNo91MHF; // The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present.
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
NSString* xEverydayPayWallet = true; // A flag to indicate if the Everyday Pay wallet should be used when processing the API request. Set the header value to \"true\" to use the Everyday Pay wallet. Set the header value to \"false\" or exclude the header completely to use the default merchant wallet. (optional)
NSString* publicKey = MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEbLF8; // The optional ephemeral public key used to encrypt sensitive instrument data and include ('cipherText' in the 'meta' object) that encrypted data in the response sent back to the consumer. If this parameter is omitted the sensitive data is NOT returned in the response to the consumer. (optional)

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

// Get Payment Instrument
[apiInstance getCustomerPaymentInstrumentWithPaymentInstrumentId:paymentInstrumentId
              xApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
              xEverydayPayWallet:xEverydayPayWallet
              publicKey:publicKey
          completionHandler: ^(OAIGetCustomerPaymentInstrumentResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->getCustomerPaymentInstrument: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentInstrumentId** | **NSString***| The ID of the specific instrument | 
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 
 **xEverydayPayWallet** | **NSString***| A flag to indicate if the Everyday Pay wallet should be used when processing the API request. Set the header value to \&quot;true\&quot; to use the Everyday Pay wallet. Set the header value to \&quot;false\&quot; or exclude the header completely to use the default merchant wallet. | [optional] 
 **publicKey** | **NSString***| The optional ephemeral public key used to encrypt sensitive instrument data and include (&#39;cipherText&#39; in the &#39;meta&#39; object) that encrypted data in the response sent back to the consumer. If this parameter is omitted the sensitive data is NOT returned in the response to the consumer. | [optional] 

### Return type

[**OAIGetCustomerPaymentInstrumentResult***](OAIGetCustomerPaymentInstrumentResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerPaymentInstruments**
```objc
-(NSURLSessionTask*) getCustomerPaymentInstrumentsWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAIGetCustomerPaymentInstrumentsResults* output, NSError* error)) handler;
```

Get Payment Instruments

Get the list of payment instruments currently configured for the customer.  Returns an array of instrument records that can be used to execute payments

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];
// Configure HTTP basic authorization (authentication scheme: bearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* authorization = Bearer 7M8hv8tqpdfSnsEZIDBzJNo91MHF; // The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present.
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

// Get Payment Instruments
[apiInstance getCustomerPaymentInstrumentsWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAIGetCustomerPaymentInstrumentsResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->getCustomerPaymentInstruments: %@", error);
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

[**OAIGetCustomerPaymentInstrumentsResults***](OAIGetCustomerPaymentInstrumentsResults.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerPaymentRequestDetailsByPaymentId**
```objc
-(NSURLSessionTask*) getCustomerPaymentRequestDetailsByPaymentIdWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    paymentRequestId: (NSString*) paymentRequestId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAIGetCustomerPaymentRequestResult* output, NSError* error)) handler;
```

Get Payment Request details

Get the details for a specific payment request so that the customer can pay using it

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];
// Configure HTTP basic authorization (authentication scheme: bearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* authorization = Bearer 7M8hv8tqpdfSnsEZIDBzJNo91MHF; // The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present.
NSString* paymentRequestId = @"paymentRequestId_example"; // The ID of the specific payment request
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

// Get Payment Request details
[apiInstance getCustomerPaymentRequestDetailsByPaymentIdWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              paymentRequestId:paymentRequestId
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAIGetCustomerPaymentRequestResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->getCustomerPaymentRequestDetailsByPaymentId: %@", error);
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

[**OAIGetCustomerPaymentRequestResult***](OAIGetCustomerPaymentRequestResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerPaymentRequestDetailsByQRCodeId**
```objc
-(NSURLSessionTask*) getCustomerPaymentRequestDetailsByQRCodeIdWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    qrId: (NSString*) qrId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAIGetCustomerPaymentRequestResult* output, NSError* error)) handler;
```

Get Payment Request details from a QR code

Get the details for a specific payment from a QR Code ID so that the customer can pay using it

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];
// Configure HTTP basic authorization (authentication scheme: bearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* authorization = Bearer 7M8hv8tqpdfSnsEZIDBzJNo91MHF; // The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present.
NSString* qrId = @"qrId_example"; // The ID of the specific QR Code
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

// Get Payment Request details from a QR code
[apiInstance getCustomerPaymentRequestDetailsByQRCodeIdWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              qrId:qrId
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAIGetCustomerPaymentRequestResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->getCustomerPaymentRequestDetailsByQRCodeId: %@", error);
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

[**OAIGetCustomerPaymentRequestResult***](OAIGetCustomerPaymentRequestResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerPaymentSession**
```objc
-(NSURLSessionTask*) getCustomerPaymentSessionWithXApiKey: (NSString*) xApiKey
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
// Configure HTTP basic authorization (authentication scheme: bearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* authorization = Bearer 7M8hv8tqpdfSnsEZIDBzJNo91MHF; // The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present.
NSString* paymentSessionId = @"paymentSessionId_example"; // The ID of the specific payment session to retrieve
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

// Get Payment Session
[apiInstance getCustomerPaymentSessionWithXApiKey:xApiKey
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
                            NSLog(@"Error calling OAICustomerApi->getCustomerPaymentSession: %@", error);
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

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerPaymentSessionByQRCodeId**
```objc
-(NSURLSessionTask*) getCustomerPaymentSessionByQRCodeIdWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    qrId: (NSString*) qrId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAICustomerPaymentSessionResult* output, NSError* error)) handler;
```

Get Payment Session

Get the payment session associated with the qrId

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];
// Configure HTTP basic authorization (authentication scheme: bearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* authorization = Bearer 7M8hv8tqpdfSnsEZIDBzJNo91MHF; // The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present.
NSString* qrId = @"qrId_example"; // The ID of the qr relating to the payment session
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

// Get Payment Session
[apiInstance getCustomerPaymentSessionByQRCodeIdWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              qrId:qrId
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAICustomerPaymentSessionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->getCustomerPaymentSessionByQRCodeId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **qrId** | **NSString***| The ID of the qr relating to the payment session | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAICustomerPaymentSessionResult***](OAICustomerPaymentSessionResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerPreferences**
```objc
-(NSURLSessionTask*) getCustomerPreferencesWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAICustomerPreferencesResult* output, NSError* error)) handler;
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
// Configure HTTP basic authorization (authentication scheme: bearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* authorization = Bearer 7M8hv8tqpdfSnsEZIDBzJNo91MHF; // The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present.
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

// Get Preferences
[apiInstance getCustomerPreferencesWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAICustomerPreferencesResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->getCustomerPreferences: %@", error);
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

[**OAICustomerPreferencesResult***](OAICustomerPreferencesResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerTermsAndConditionsAcceptance**
```objc
-(NSURLSessionTask*) getCustomerTermsAndConditionsAcceptanceWithXWalletID: (NSString*) xWalletID
    type: (NSString*) type
    version: (NSString*) version
        completionHandler: (void (^)(OAICustomerTermsAndConditionsResult* output, NSError* error)) handler;
```

Get Customer Terms and Conditions acceptance

Get the terms and conditions agreed to by the customer

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];
// Configure HTTP basic authorization (authentication scheme: bearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* xWalletID = bb8f86af-9e7b-4659-85d5-346b5e99d500; // 
NSString* type = @"type_example"; // The type of Ts and Cs that the shopper/customer has agreed to.  Defaults to all if absent (optional)
NSString* version = @"version_example"; // The version of Ts and Cs that the shopper/customer has agreed to.  Defaults to all if absent (optional)

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

// Get Customer Terms and Conditions acceptance
[apiInstance getCustomerTermsAndConditionsAcceptanceWithXWalletID:xWalletID
              type:type
              version:version
          completionHandler: ^(OAICustomerTermsAndConditionsResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->getCustomerTermsAndConditionsAcceptance: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xWalletID** | **NSString***|  | 
 **type** | **NSString***| The type of Ts and Cs that the shopper/customer has agreed to.  Defaults to all if absent | [optional] 
 **version** | **NSString***| The version of Ts and Cs that the shopper/customer has agreed to.  Defaults to all if absent | [optional] 

### Return type

[**OAICustomerTermsAndConditionsResult***](OAICustomerTermsAndConditionsResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerTransactionDetails**
```objc
-(NSURLSessionTask*) getCustomerTransactionDetailsWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    transactionId: (NSString*) transactionId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAIGetCustomerTransactionDetailsResults* output, NSError* error)) handler;
```

Get Transaction Details

Get the details for a specific transaction previously executed by the customer.  Note that amounts are relative to the merchant.  A positive amount is a positive amount transferred to a merchant

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];
// Configure HTTP basic authorization (authentication scheme: bearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* authorization = Bearer 7M8hv8tqpdfSnsEZIDBzJNo91MHF; // The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present.
NSString* transactionId = 75ba5b0b-7e5d-47fe-9508-29ca69fdb1d5; // The ID of the specific transaction
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

// Get Transaction Details
[apiInstance getCustomerTransactionDetailsWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              transactionId:transactionId
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAIGetCustomerTransactionDetailsResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->getCustomerTransactionDetails: %@", error);
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

[**OAIGetCustomerTransactionDetailsResults***](OAIGetCustomerTransactionDetailsResults.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerTransactions**
```objc
-(NSURLSessionTask*) getCustomerTransactionsWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    paymentRequestId: (NSString*) paymentRequestId
    startTime: (NSDate*) startTime
    endTime: (NSDate*) endTime
    pageSize: (NSNumber*) pageSize
    page: (NSNumber*) page
        completionHandler: (void (^)(OAIGetCustomerTransactionsResult* output, NSError* error)) handler;
```

Get Transaction List

Get a list of the previously executed transactions for the customer.  Note that amounts are relative to the merchant.  A positive amount is a positive amount transferred to a merchant

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];
// Configure HTTP basic authorization (authentication scheme: bearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* authorization = Bearer 7M8hv8tqpdfSnsEZIDBzJNo91MHF; // The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present.
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
NSString* paymentRequestId = f27b0189-3449-4215-ab95-31c24e775a48; // If present, limits the list of transactions to those that relate to the payment request (optional)
NSDate* startTime = 2017-11-06T19:38:09.890+11:00; // If present, the date/time to limit transactions returned.  Transactions older than this time will not be returned (optional)
NSDate* endTime = 2017-11-06T19:38:09.890+11:00; // If present, the date/time to limit transactions returned.  Transactions newer than this time will not be returned (optional)
NSNumber* pageSize = @25; // The number of records to return for this page.  Defaults to 25 if absent (optional) (default to @25)
NSNumber* page = @1; // The page of results to return with 1 indicating the first page.  Defaults to 1 if absent (optional) (default to @1)

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

// Get Transaction List
[apiInstance getCustomerTransactionsWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
              paymentRequestId:paymentRequestId
              startTime:startTime
              endTime:endTime
              pageSize:pageSize
              page:page
          completionHandler: ^(OAIGetCustomerTransactionsResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->getCustomerTransactions: %@", error);
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
 **paymentRequestId** | **NSString***| If present, limits the list of transactions to those that relate to the payment request | [optional] 
 **startTime** | **NSDate***| If present, the date/time to limit transactions returned.  Transactions older than this time will not be returned | [optional] 
 **endTime** | **NSDate***| If present, the date/time to limit transactions returned.  Transactions newer than this time will not be returned | [optional] 
 **pageSize** | **NSNumber***| The number of records to return for this page.  Defaults to 25 if absent | [optional] [default to @25]
 **page** | **NSNumber***| The page of results to return with 1 indicating the first page.  Defaults to 1 if absent | [optional] [default to @1]

### Return type

[**OAIGetCustomerTransactionsResult***](OAIGetCustomerTransactionsResult.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaymentAgreement**
```objc
-(NSURLSessionTask*) getPaymentAgreementWithXWalletID: (NSString*) xWalletID
    paymentToken: (NSString*) paymentToken
        completionHandler: (void (^)(OAICustomerPaymentAgreementResponse* output, NSError* error)) handler;
```

Get Payment Agreement

Get a specific payment agreements

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];
// Configure HTTP basic authorization (authentication scheme: bearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* xWalletID = bb8f86af-9e7b-4659-85d5-346b5e99d500; // 
NSString* paymentToken = @"paymentToken_example"; // The ID of the specific payment agreement

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

// Get Payment Agreement
[apiInstance getPaymentAgreementWithXWalletID:xWalletID
              paymentToken:paymentToken
          completionHandler: ^(OAICustomerPaymentAgreementResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->getPaymentAgreement: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xWalletID** | **NSString***|  | 
 **paymentToken** | **NSString***| The ID of the specific payment agreement | 

### Return type

[**OAICustomerPaymentAgreementResponse***](OAICustomerPaymentAgreementResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaymentAgreementList**
```objc
-(NSURLSessionTask*) getPaymentAgreementListWithXWalletID: (NSString*) xWalletID
        completionHandler: (void (^)(OAIPaymentAgreementListResponse* output, NSError* error)) handler;
```

Get Payment Agreements

Get a list of payment agreements

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];
// Configure HTTP basic authorization (authentication scheme: bearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* xWalletID = bb8f86af-9e7b-4659-85d5-346b5e99d500; // 

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

// Get Payment Agreements
[apiInstance getPaymentAgreementListWithXWalletID:xWalletID
          completionHandler: ^(OAIPaymentAgreementListResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->getPaymentAgreementList: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xWalletID** | **NSString***|  | 

### Return type

[**OAIPaymentAgreementListResponse***](OAIPaymentAgreementListResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initiatePaymentInstrumentAddition**
```objc
-(NSURLSessionTask*) initiatePaymentInstrumentAdditionWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    instrumentAdditionDetails: (OAIInstrumentAdditionDetails*) instrumentAdditionDetails
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(OAIInitiatePaymentInstrumentAdditionResults* output, NSError* error)) handler;
```

Initiate Instrument Addition

Initiate the addition of a new payment instrument for this customer.  This API returns a URL to be used to access the DigiPay IFrame based interface to request the customer to enter a payment instrument details.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];
// Configure HTTP basic authorization (authentication scheme: bearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* authorization = Bearer 7M8hv8tqpdfSnsEZIDBzJNo91MHF; // The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present.
OAIInstrumentAdditionDetails* instrumentAdditionDetails = [[OAIInstrumentAdditionDetails alloc] init]; // 
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

// Initiate Instrument Addition
[apiInstance initiatePaymentInstrumentAdditionWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              instrumentAdditionDetails:instrumentAdditionDetails
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(OAIInitiatePaymentInstrumentAdditionResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->initiatePaymentInstrumentAddition: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **instrumentAdditionDetails** | [**OAIInstrumentAdditionDetails***](OAIInstrumentAdditionDetails.md)|  | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

[**OAIInitiatePaymentInstrumentAdditionResults***](OAIInitiatePaymentInstrumentAdditionResults.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **makeCustomerPayment**
```objc
-(NSURLSessionTask*) makeCustomerPaymentWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    paymentRequestId: (NSString*) paymentRequestId
    customerPaymentDetails: (OAICustomerPaymentDetails*) customerPaymentDetails
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    xEverydayPayWallet: (NSNumber*) xEverydayPayWallet
        completionHandler: (void (^)(OAIMakeCustomerPaymentResults* output, NSError* error)) handler;
```

Pay Payment

Pay a specific payment using the instrument details provided

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];
// Configure HTTP basic authorization (authentication scheme: bearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* authorization = Bearer 7M8hv8tqpdfSnsEZIDBzJNo91MHF; // The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present.
NSString* paymentRequestId = @"paymentRequestId_example"; // The ID of the specific payment request
OAICustomerPaymentDetails* customerPaymentDetails = [[OAICustomerPaymentDetails alloc] init]; // Request payload containing instruments to use for the payment
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
NSNumber* xEverydayPayWallet = @(NO); // The makes instruments available in the everyday pay wallet available for payments (optional) (default to @(NO))

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

// Pay Payment
[apiInstance makeCustomerPaymentWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              paymentRequestId:paymentRequestId
              customerPaymentDetails:customerPaymentDetails
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
              xEverydayPayWallet:xEverydayPayWallet
          completionHandler: ^(OAIMakeCustomerPaymentResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->makeCustomerPayment: %@", error);
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
 **customerPaymentDetails** | [**OAICustomerPaymentDetails***](OAICustomerPaymentDetails.md)| Request payload containing instruments to use for the payment | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 
 **xEverydayPayWallet** | **NSNumber***| The makes instruments available in the everyday pay wallet available for payments | [optional] [default to @(NO)]

### Return type

[**OAIMakeCustomerPaymentResults***](OAIMakeCustomerPaymentResults.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **makeImmediateCustomerPayments**
```objc
-(NSURLSessionTask*) makeImmediateCustomerPaymentsWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    immediatePaymentRequest: (OAIImmediatePaymentRequest*) immediatePaymentRequest
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    xEverydayPayWallet: (NSNumber*) xEverydayPayWallet
        completionHandler: (void (^)(OAIMakeCustomerPaymentResults* output, NSError* error)) handler;
```

Immediate Customer Payments

Make payments to a merchant using payment intruments. This endpoint establishes a payment request and then makes a payment against it.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];
// Configure HTTP basic authorization (authentication scheme: bearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* authorization = Bearer 7M8hv8tqpdfSnsEZIDBzJNo91MHF; // The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present.
OAIImmediatePaymentRequest* immediatePaymentRequest = [[OAIImmediatePaymentRequest alloc] init]; // Request payload containing instruments to use for the payment
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
NSNumber* xEverydayPayWallet = @(NO); // The makes instruments available in the everyday pay wallet available for payments (optional) (default to @(NO))

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

// Immediate Customer Payments
[apiInstance makeImmediateCustomerPaymentsWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              immediatePaymentRequest:immediatePaymentRequest
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
              xEverydayPayWallet:xEverydayPayWallet
          completionHandler: ^(OAIMakeCustomerPaymentResults* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->makeImmediateCustomerPayments: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **immediatePaymentRequest** | [**OAIImmediatePaymentRequest***](OAIImmediatePaymentRequest.md)| Request payload containing instruments to use for the payment | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 
 **xEverydayPayWallet** | **NSNumber***| The makes instruments available in the everyday pay wallet available for payments | [optional] [default to @(NO)]

### Return type

[**OAIMakeCustomerPaymentResults***](OAIMakeCustomerPaymentResults.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **preApprovePaymentSession**
```objc
-(NSURLSessionTask*) preApprovePaymentSessionWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    paymentSessionId: (NSString*) paymentSessionId
    customerPaymentDetails: (OAICustomerPaymentDetails*) customerPaymentDetails
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
        completionHandler: (void (^)(NSError* error)) handler;
```

Pre-Approve payment

Pre-Approve a payment session to make a payment using the instrument details provided

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];
// Configure HTTP basic authorization (authentication scheme: bearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* authorization = Bearer 7M8hv8tqpdfSnsEZIDBzJNo91MHF; // The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present.
NSString* paymentSessionId = @"paymentSessionId_example"; // The ID of the specific payment session
OAICustomerPaymentDetails* customerPaymentDetails = [[OAICustomerPaymentDetails alloc] init]; // Request payload containing instruments to use for the payment
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

// Pre-Approve payment
[apiInstance preApprovePaymentSessionWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              paymentSessionId:paymentSessionId
              customerPaymentDetails:customerPaymentDetails
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->preApprovePaymentSession: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **paymentSessionId** | **NSString***| The ID of the specific payment session | 
 **customerPaymentDetails** | [**OAICustomerPaymentDetails***](OAICustomerPaymentDetails.md)| Request payload containing instruments to use for the payment | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setCustomerPreferences**
```objc
-(NSURLSessionTask*) setCustomerPreferencesWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    customerPreferences: (OAICustomerPreferences*) customerPreferences
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
// Configure HTTP basic authorization (authentication scheme: bearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* xApiKey = haTdoUWVhnXm5n75u6d0VG67vCCvKjQC; // The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
NSString* authorization = Bearer 7M8hv8tqpdfSnsEZIDBzJNo91MHF; // The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present.
NSString* xJWSSignature = eyJhbGciOiJSUzI1NiIsImtpZCI6ImRldiIsInZlcmIiOiJQT1NUIiwidXJsIjoiaHR0cHM6Ly9kZXYubW9iaWxlLWFwaS53b29sd29ydGhzLmNvbS5hdS93b3cvdjEvandzZGVtby92YWxpZGF0ZSIsInRpbWVzdGFtcCI6MTU5NTIwNjcxNDQzOH0..muEr0b3GNORrP0FW1ohUh2XITRNaOO7uBz; // The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present.
OAICustomerPreferences* customerPreferences = [[OAICustomerPreferences alloc] init]; // 
NSString* xAuthKey = OHR1Ull5TVk53NjI5Ng==; // (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
NSString* xAuthDigest = c51e0ee540cd3893982d3539d81fddec0bcd832d; // (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
NSString* xMessageId = f23c096b2e816da158fdf1ad839298e2; // This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

// Set Preferences
[apiInstance setCustomerPreferencesWithXApiKey:xApiKey
              authorization:authorization
              xJWSSignature:xJWSSignature
              customerPreferences:customerPreferences
              xAuthKey:xAuthKey
              xAuthDigest:xAuthDigest
              xMessageId:xMessageId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->setCustomerPreferences: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **NSString***| The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team. | 
 **authorization** | **NSString***| The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present. | 
 **xJWSSignature** | **NSString***| The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present. | 
 **customerPreferences** | [**OAICustomerPreferences***](OAICustomerPreferences.md)|  | 
 **xAuthKey** | **NSString***| (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. | [optional] 
 **xAuthDigest** | **NSString***| (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. | [optional] 
 **xMessageId** | **NSString***| This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomerPaymentAgreement**
```objc
-(NSURLSessionTask*) updateCustomerPaymentAgreementWithXWalletID: (NSString*) xWalletID
    paymentToken: (NSString*) paymentToken
    customerUpdatePaymentAgreementRequest: (OAICustomerUpdatePaymentAgreementRequest*) customerUpdatePaymentAgreementRequest
        completionHandler: (void (^)(OAICustomerPaymentAgreementResponse* output, NSError* error)) handler;
```

Update Payment Agreement

Update an existing payment agreement

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: ApiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-Api-Key"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-Api-Key"];
// Configure HTTP basic authorization (authentication scheme: bearerAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NSString* xWalletID = bb8f86af-9e7b-4659-85d5-346b5e99d500; // 
NSString* paymentToken = @"paymentToken_example"; // The ID of the specific payment agreement
OAICustomerUpdatePaymentAgreementRequest* customerUpdatePaymentAgreementRequest = [[OAICustomerUpdatePaymentAgreementRequest alloc] init]; // 

OAICustomerApi*apiInstance = [[OAICustomerApi alloc] init];

// Update Payment Agreement
[apiInstance updateCustomerPaymentAgreementWithXWalletID:xWalletID
              paymentToken:paymentToken
              customerUpdatePaymentAgreementRequest:customerUpdatePaymentAgreementRequest
          completionHandler: ^(OAICustomerPaymentAgreementResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAICustomerApi->updateCustomerPaymentAgreement: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xWalletID** | **NSString***|  | 
 **paymentToken** | **NSString***| The ID of the specific payment agreement | 
 **customerUpdatePaymentAgreementRequest** | [**OAICustomerUpdatePaymentAgreementRequest***](OAICustomerUpdatePaymentAgreementRequest.md)|  | 

### Return type

[**OAICustomerPaymentAgreementResponse***](OAICustomerPaymentAgreementResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

