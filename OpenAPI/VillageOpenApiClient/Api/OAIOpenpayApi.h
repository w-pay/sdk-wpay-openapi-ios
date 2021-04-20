#import <Foundation/Foundation.h>
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
#import "OAIApi.h"

/**
* Wpay APIs
* Wpay APIs for payments and gifting
*
* The version of the OpenAPI document: 1.0.3
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface OAIOpenpayApi: NSObject <OAIApi>

extern NSString* kOAIOpenpayApiErrorDomain;
extern NSInteger kOAIOpenpayApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Openpay Completions
/// Complete pre-authed Openpay payments. This API is IP restricted to allow unauthenticated server side calls.
///
/// @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
/// @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible.
/// @param body 
/// @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
/// @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
/// @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
/// 
///  code:200 message:"Success",
///  code:400 message:"Missing or invalid request payload or value.",
///  code:401 message:"Invalid API Key or API Product Match Not Found or Invalid Token or Expired Token.",
///  code:404 message:"Invalid API Route.",
///  code:500 message:"An unknown error occurred.",
///  code:501 message:"A Business Validation error occurred.",
///  code:502 message:"An Internal System error occurred.",
///  code:503 message:"The Service is currently unavailable.",
///  code:504 message:"The request timed out."
///
/// @return OAIOpenpayCompletionsSuccessResponse*
-(NSURLSessionTask*) openpayCompletionsPostWithXApiKey: (NSString*) xApiKey
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIOpenpayCompletionsRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIOpenpayCompletionsSuccessResponse* output, NSError* error)) handler;


/// Openpay Payments
/// Make payments to a merchant using Openpay payment tokens.
///
/// @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
/// @param authorization The Bearer token for the request. The Bearer token authentication approach can be used by API consumers that implement a client-to-server architecture (mobile app, browser site/page) or server-to-server architecture (BFF, microservice, web server, etc.) for calling Digital Pay APIs. However the Bearer token for a shopper/customer must be obtained from the IDM Server Token API which can only be accessed from a server-to-server architecture (BFF, microservice, web server, etc.). The Authorization header is only required if the X-JWS-Signature header is not present.
/// @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible. The X-JWS-Signature header is only required if the Authorization header is not present.
/// @param body 
/// @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
/// @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
/// @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
/// 
///  code:200 message:"Success",
///  code:400 message:"Missing or invalid request payload or value.",
///  code:401 message:"Invalid API Key or API Product Match Not Found or Invalid Token or Expired Token.",
///  code:404 message:"Invalid API Route.",
///  code:500 message:"An unknown error occurred.",
///  code:501 message:"A Business Validation error occurred.",
///  code:502 message:"An Internal System error occurred.",
///  code:503 message:"The Service is currently unavailable.",
///  code:504 message:"The request timed out."
///
/// @return OAIOpenpayPaymentsSuccessResponse*
-(NSURLSessionTask*) openpayPaymentsPostWithXApiKey: (NSString*) xApiKey
    authorization: (NSString*) authorization
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIOpenpayPaymentsRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIOpenpayPaymentsSuccessResponse* output, NSError* error)) handler;


/// Openpay Refunds
/// Refund Openpay payments. This API is IP restricted to allow unauthenticated server side calls.
///
/// @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
/// @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible.
/// @param body 
/// @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
/// @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
/// @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
/// 
///  code:200 message:"Success",
///  code:400 message:"Missing or invalid request payload or value.",
///  code:401 message:"Invalid API Key or API Product Match Not Found or Invalid Token or Expired Token.",
///  code:404 message:"Invalid API Route.",
///  code:500 message:"An unknown error occurred.",
///  code:501 message:"A Business Validation error occurred.",
///  code:502 message:"An Internal System error occurred.",
///  code:503 message:"The Service is currently unavailable.",
///  code:504 message:"The request timed out."
///
/// @return OAIOpenpayRefundsSuccessResponse*
-(NSURLSessionTask*) openpayRefundsPostWithXApiKey: (NSString*) xApiKey
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIOpenpayRefundsRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIOpenpayRefundsSuccessResponse* output, NSError* error)) handler;


/// Openpay Voids
/// Void (cancel) pre-authed Openpay payments. This API is IP restricted to allow unauthenticated server side calls.
///
/// @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
/// @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible.
/// @param body 
/// @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
/// @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
/// @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
/// 
///  code:200 message:"Success",
///  code:400 message:"Missing or invalid request payload or value.",
///  code:401 message:"Invalid API Key or API Product Match Not Found or Invalid Token or Expired Token.",
///  code:404 message:"Invalid API Route.",
///  code:500 message:"An unknown error occurred.",
///  code:501 message:"A Business Validation error occurred.",
///  code:502 message:"An Internal System error occurred.",
///  code:503 message:"The Service is currently unavailable.",
///  code:504 message:"The request timed out."
///
/// @return OAIOpenpayVoidsSuccessResponse*
-(NSURLSessionTask*) openpayVoidsPostWithXApiKey: (NSString*) xApiKey
    xJWSSignature: (NSString*) xJWSSignature
    body: (OAIOpenpayVoidsRequest*) body
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIOpenpayVoidsSuccessResponse* output, NSError* error)) handler;



@end
