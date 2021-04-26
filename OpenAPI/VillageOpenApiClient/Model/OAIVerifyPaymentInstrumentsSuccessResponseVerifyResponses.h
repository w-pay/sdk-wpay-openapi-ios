#import <Foundation/Foundation.h>
#import "OAIObject.h"

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





@protocol OAIVerifyPaymentInstrumentsSuccessResponseVerifyResponses
@end

@interface OAIVerifyPaymentInstrumentsSuccessResponseVerifyResponses : OAIObject

/* The payment token. 
 */
@property(nonatomic) NSString* paymentToken;
/* Container reference in the transaction logs. This number uniquely identifies the transaction in the container. 
 */
@property(nonatomic) NSString* verifyTransactionRef;
/* The external service code (from eg. Webpay). This property is only included in the response if it is enabled in the consumers API configuration. 
 */
@property(nonatomic) NSString* externalServiceCode;
/* The external service message (from eg. Webpay). This property is only included in the response if it is enabled in the consumers API configuration. 
 */
@property(nonatomic) NSString* externalServiceMessage;

@end