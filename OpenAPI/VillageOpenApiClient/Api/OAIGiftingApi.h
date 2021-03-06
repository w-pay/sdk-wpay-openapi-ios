#import <Foundation/Foundation.h>
#import "OAIBaseErrorResponse.h"
#import "OAIGiftingProductOrderRequest.h"
#import "OAIGiftingProductQuoteRequest.h"
#import "OAIInlineResponse200.h"
#import "OAIInlineResponse2001.h"
#import "OAIInlineResponse2002.h"
#import "OAIInlineResponse2003.h"
#import "OAIOpenpayRefundsErrorResponse.h"
#import "OAIApi.h"

/**
* Wpay APIs
* Wpay APIs for payments and gifting
*
* The version of the OpenAPI document: 1.0.7
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface OAIGiftingApi: NSObject <OAIApi>

extern NSString* kOAIGiftingApiErrorDomain;
extern NSInteger kOAIGiftingApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Retrieve Gift Card Products
/// Obtains a list of available gift card products that can be purchased.
///
/// @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
/// @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible.
/// @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
/// @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
/// @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
/// @param lastUpdateDateTime If present, the date/time to limit products returned.  Only products changed since this time will be returned (optional)
/// @param pageSize The number of records to return for this page.  Defaults to 25 if absent (optional) (default to @25)
/// @param page The page of results to return with 1 indicating the first page.  Defaults to 1 if absent (optional) (default to @1)
/// 
///  code:200 message:"Successful response",
///  code:400 message:"Missing or invalid request payload or value.",
///  code:401 message:"Invalid API Key or API Product Match Not Found or Invalid Token or Expired Token.",
///  code:404 message:"Invalid API Route.",
///  code:500 message:"An unknown error occurred.",
///  code:501 message:"A Business Validation error occurred.",
///  code:502 message:"An Internal System error occurred.",
///  code:503 message:"The Service is currently unavailable.",
///  code:504 message:"The request timed out."
///
/// @return OAIInlineResponse200*
-(NSURLSessionTask*) giftingProductsGetWithXApiKey: (NSString*) xApiKey
    xJWSSignature: (NSString*) xJWSSignature
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    lastUpdateDateTime: (NSDate*) lastUpdateDateTime
    pageSize: (NSNumber*) pageSize
    page: (NSNumber*) page
    completionHandler: (void (^)(OAIInlineResponse200* output, NSError* error)) handler;


/// Order Gift Card
/// Order a gift card product.
///
/// @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
/// @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible.
/// @param giftingProductOrderRequest Request payload containing instruments to use for the payment
/// @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
/// @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
/// @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
/// 
///  code:200 message:"Successful response",
///  code:400 message:"Missing or invalid request payload or value.",
///  code:401 message:"Invalid API Key or API Product Match Not Found or Invalid Token or Expired Token.",
///  code:404 message:"Invalid API Route.",
///  code:500 message:"An unknown error occurred.",
///  code:501 message:"A Business Validation error occurred.",
///  code:502 message:"An Internal System error occurred.",
///  code:503 message:"The Service is currently unavailable.",
///  code:504 message:"The request timed out."
///
/// @return OAIInlineResponse2003*
-(NSURLSessionTask*) giftingProductsOrderPostWithXApiKey: (NSString*) xApiKey
    xJWSSignature: (NSString*) xJWSSignature
    giftingProductOrderRequest: (OAIGiftingProductOrderRequest*) giftingProductOrderRequest
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIInlineResponse2003* output, NSError* error)) handler;


/// Retrieve Gift Card Product Detail
/// Obtains a list of available gift card products that can be purchased.
///
/// @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
/// @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible.
/// @param productId The ID of the specific gift card product
/// @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
/// @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
/// @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
/// 
///  code:200 message:"Successful response",
///  code:400 message:"Missing or invalid request payload or value.",
///  code:401 message:"Invalid API Key or API Product Match Not Found or Invalid Token or Expired Token.",
///  code:404 message:"Invalid API Route.",
///  code:500 message:"An unknown error occurred.",
///  code:501 message:"A Business Validation error occurred.",
///  code:502 message:"An Internal System error occurred.",
///  code:503 message:"The Service is currently unavailable.",
///  code:504 message:"The request timed out."
///
/// @return OAIInlineResponse2001*
-(NSURLSessionTask*) giftingProductsProductIdGetWithXApiKey: (NSString*) xApiKey
    xJWSSignature: (NSString*) xJWSSignature
    productId: (NSString*) productId
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIInlineResponse2001* output, NSError* error)) handler;


/// Obtain Gift Card Quote
/// Validates a gift card order and verifies discount prior to an order being placed.
///
/// @param xApiKey The API key for the request. The API keys (non-prod/prod) will be supplied by the Digital Pay team.
/// @param xJWSSignature The JWS signature used to sign the request. The JWS signature authentication approach can only be used by API consumers that implement a server-to-server architecture (BFF, microservice, web server, etc.) for calling the Digital Pay APIs. The RSA private key, required to generate the signiture, has to be stored securely and should not be publicly accessible.
/// @param giftingProductQuoteRequest Request payload containing details of the order to quote on
/// @param xAuthKey (Deprecated) You are required to use this header to provide the base64 encoded API key. Requires the X-Auth-Digest header to be present. (optional)
/// @param xAuthDigest (Deprecated) You are required to use this header to provide the encrypted API key. The value is the API key encrypted with the client secret key. Requires the X-Auth-Key header to be present. (optional)
/// @param xMessageId This id is used to keep track of the request and its response in the Digital Pay platform. If no value is provided for the request header, Apigee will auto generate an id to use for the request. This header will also be returned in the response and will have the value passed in (or auto generated) from the request. (optional)
/// 
///  code:200 message:"Successful response",
///  code:400 message:"Missing or invalid request payload or value.",
///  code:401 message:"Invalid API Key or API Product Match Not Found or Invalid Token or Expired Token.",
///  code:404 message:"Invalid API Route.",
///  code:500 message:"An unknown error occurred.",
///  code:501 message:"A Business Validation error occurred.",
///  code:502 message:"An Internal System error occurred.",
///  code:503 message:"The Service is currently unavailable.",
///  code:504 message:"The request timed out."
///
/// @return OAIInlineResponse2002*
-(NSURLSessionTask*) giftingProductsQuotePostWithXApiKey: (NSString*) xApiKey
    xJWSSignature: (NSString*) xJWSSignature
    giftingProductQuoteRequest: (OAIGiftingProductQuoteRequest*) giftingProductQuoteRequest
    xAuthKey: (NSString*) xAuthKey
    xAuthDigest: (NSString*) xAuthDigest
    xMessageId: (NSString*) xMessageId
    completionHandler: (void (^)(OAIInlineResponse2002* output, NSError* error)) handler;



@end
