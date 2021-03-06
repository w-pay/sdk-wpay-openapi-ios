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



@protocol OAIOpenpayPaymentsSuccessResponsePaymentResponses
@end

@interface OAIOpenpayPaymentsSuccessResponsePaymentResponses : OAIObject

/* The payment token. The payment token is a unique identifier for the payment instrument. 
 */
@property(nonatomic) NSString* paymentToken;
/* Container reference in the transaction logs. This number uniquely identifies the openpay transaction in the container. 
 */
@property(nonatomic) NSString* paymentTransactionRef;
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
