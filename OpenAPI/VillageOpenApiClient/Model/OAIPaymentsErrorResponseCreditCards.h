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


#import "OAIPaymentsSuccessResponseExtendedTransactionData.h"
#import "OAIPaymentsSuccessResponseReceiptData.h"
#import "OAIPaymentsSuccessResponseThreeDS.h"
#import "OAIVerifyPaymentInstrumentsErrorResponseStepUp.h"
@protocol OAIPaymentsSuccessResponseExtendedTransactionData;
@class OAIPaymentsSuccessResponseExtendedTransactionData;
@protocol OAIPaymentsSuccessResponseReceiptData;
@class OAIPaymentsSuccessResponseReceiptData;
@protocol OAIPaymentsSuccessResponseThreeDS;
@class OAIPaymentsSuccessResponseThreeDS;
@protocol OAIVerifyPaymentInstrumentsErrorResponseStepUp;
@class OAIVerifyPaymentInstrumentsErrorResponseStepUp;



@protocol OAIPaymentsErrorResponseCreditCards
@end

@interface OAIPaymentsErrorResponseCreditCards : OAIObject

/* The credit card payment instrument id. 
 */
@property(nonatomic) NSString* paymentInstrumentId;
/* The credit card payment token. The payment token is a unique identifier for the payment instrument. 
 */
@property(nonatomic) NSString* paymentToken;
/* The error code. Only present if an error occurred during payment. 
 */
@property(nonatomic) NSString* errorCode;
/* The error message. Only present if an error occurred during payment. 
 */
@property(nonatomic) NSString* errorMessage;
/* The error detail. Only present if an error occurred during payment. 
 */
@property(nonatomic) NSString* errorDetail;

@property(nonatomic) OAIVerifyPaymentInstrumentsErrorResponseStepUp* stepUp;

@property(nonatomic) OAIPaymentsSuccessResponseReceiptData* receiptData;
/* This array is only included in the response if it is enabled in the consumers API configuration. [optional]
 */
@property(nonatomic) NSArray<OAIPaymentsSuccessResponseExtendedTransactionData>* extendedTransactionData;
/* The external service code (from eg. Webpay). This property is only included in the response if it is enabled in the consumers API configuration. [optional]
 */
@property(nonatomic) NSString* externalServiceCode;
/* The external service message (from eg. Webpay). This property is only included in the response if it is enabled in the consumers API configuration. [optional]
 */
@property(nonatomic) NSString* externalServiceMessage;

@property(nonatomic) OAIPaymentsSuccessResponseThreeDS* threeDS;

@end
