#import <Foundation/Foundation.h>
#import "OAIObject.h"

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


#import "OAIOpenpayPaymentsSuccessResponseExtendedTransactionData.h"
@protocol OAIOpenpayPaymentsSuccessResponseExtendedTransactionData;
@class OAIOpenpayPaymentsSuccessResponseExtendedTransactionData;



@protocol OAIOpenpayRefundsSuccessResponseRefundResponses
@end

@interface OAIOpenpayRefundsSuccessResponseRefundResponses : OAIObject

/* Container reference in the transaction logs. This number uniquely identifies the openpay transaction in the container. 
 */
@property(nonatomic) NSString* paymentTransactionRef;
/* Container reference in the transaction logs. This number uniquely identifies the refund transaction in the container. 
 */
@property(nonatomic) NSString* refundTransactionRef;
/* The amount processed in the refund. 
 */
@property(nonatomic) NSNumber* amount;
/* This array is only included in the response if it is enabled in the consumers API configuration. 
 */
@property(nonatomic) NSArray<OAIOpenpayPaymentsSuccessResponseExtendedTransactionData>* extendedTransactionData;
/* The external service code (from eg. Openpay). This property is only included in the response if it is enabled in the consumers API configuration. 
 */
@property(nonatomic) NSString* externalServiceCode;
/* The external service message (from eg. Openpay). This property is only included in the response if it is enabled in the consumers API configuration. 
 */
@property(nonatomic) NSString* externalServiceMessage;

@end
