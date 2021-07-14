#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Wpay APIs
* Wpay APIs for payments and gifting
*
* The version of the OpenAPI document: 1.0.5
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol OAIRefundsErrorResponseRefundResponses
@end

@interface OAIRefundsErrorResponseRefundResponses : OAIObject

/* Container reference in the transaction logs. This number uniquely identifies the credit card transaction in the container. 
 */
@property(nonatomic) NSString* paymentTransactionRef;
/* The error code. Only present if an error occurred during payment. 
 */
@property(nonatomic) NSString* errorCode;
/* The error message. Only present if an error occurred during payment. 
 */
@property(nonatomic) NSString* errorMessage;
/* The error detail. Only present if an error occurred during payment. 
 */
@property(nonatomic) NSString* errorDetail;
/* The external service code (from eg. Webpay). This property is only included in the response if it is enabled in the consumers API configuration. 
 */
@property(nonatomic) NSString* externalServiceCode;
/* The external service message (from eg. Webpay). This property is only included in the response if it is enabled in the consumers API configuration. 
 */
@property(nonatomic) NSString* externalServiceMessage;

@end
