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


#import "OAIPaymentAgreementErrorResponseStepUp.h"
#import "OAIPaymentsSuccessResponseExtendedTransactionData.h"
@protocol OAIPaymentAgreementErrorResponseStepUp;
@class OAIPaymentAgreementErrorResponseStepUp;
@protocol OAIPaymentsSuccessResponseExtendedTransactionData;
@class OAIPaymentsSuccessResponseExtendedTransactionData;



@protocol OAIPaymentAgreementErrorResponse
@end

@interface OAIPaymentAgreementErrorResponse : OAIObject

/* The payment token of the payment agreement. The payment token is a unique identifier for the payment agreement. 
 */
@property(nonatomic) NSString* paymentToken;
/* The http status code (4xx and 5xx HTTP status codes). 
 */
@property(nonatomic) NSNumber* httpStatusCode;
/* The error code. 
 */
@property(nonatomic) NSString* errorCode;
/* The error message. 
 */
@property(nonatomic) NSString* errorMessage;
/* The error detail. 
 */
@property(nonatomic) NSString* errorDetail;

@property(nonatomic) OAIPaymentAgreementErrorResponseStepUp* stepUp;
/* This array is only included in the response if it is enabled in the consumers API configuration. [optional]
 */
@property(nonatomic) NSArray<OAIPaymentsSuccessResponseExtendedTransactionData>* extendedTransactionData;
/* The external service code (from eg. Webpay). This property is only included in the response if it is enabled in the consumers API configuration. [optional]
 */
@property(nonatomic) NSString* externalServiceCode;
/* The external service message (from eg. Webpay). This property is only included in the response if it is enabled in the consumers API configuration. [optional]
 */
@property(nonatomic) NSString* externalServiceMessage;

@end
