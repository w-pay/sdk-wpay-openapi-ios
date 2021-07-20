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


#import "OAIPaymentsSuccessResponseExtendedTransactionData1.h"
#import "OAIPaymentsSuccessResponseStepUp.h"
@protocol OAIPaymentsSuccessResponseExtendedTransactionData1;
@class OAIPaymentsSuccessResponseExtendedTransactionData1;
@protocol OAIPaymentsSuccessResponseStepUp;
@class OAIPaymentsSuccessResponseStepUp;



@protocol OAIPaymentsSuccessResponseGooglePay
@end

@interface OAIPaymentsSuccessResponseGooglePay : OAIObject

/* The google pay payment instrument id. 
 */
@property(nonatomic) NSString* paymentInstrumentId;
/* The google pay payment token. The payment token is a unique identifier for the payment instrument. 
 */
@property(nonatomic) NSString* paymentToken;
/* Container reference in the transaction logs. This number uniquely identifies the google pay transaction in the container. 
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

@property(nonatomic) OAIPaymentsSuccessResponseStepUp* stepUp;
/* This array is only included in the response if it is enabled in the consumers API configuration. [optional]
 */
@property(nonatomic) NSArray<OAIPaymentsSuccessResponseExtendedTransactionData1>* extendedTransactionData;
/* The external service code (from eg. Google Pay). This property is only included in the response if it is enabled in the consumers API configuration. [optional]
 */
@property(nonatomic) NSString* externalServiceCode;
/* The external service message (from eg. Google Pay). This property is only included in the response if it is enabled in the consumers API configuration. [optional]
 */
@property(nonatomic) NSString* externalServiceMessage;

@end
