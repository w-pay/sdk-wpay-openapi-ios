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


#import "OAIPaymentAgreementResponsePaymentAgreement.h"
#import "OAIPaymentsSuccessResponseExtendedTransactionData.h"
#import "OAIPaymentsSuccessResponseFraudResponse.h"
@protocol OAIPaymentAgreementResponsePaymentAgreement;
@class OAIPaymentAgreementResponsePaymentAgreement;
@protocol OAIPaymentsSuccessResponseExtendedTransactionData;
@class OAIPaymentsSuccessResponseExtendedTransactionData;
@protocol OAIPaymentsSuccessResponseFraudResponse;
@class OAIPaymentsSuccessResponseFraudResponse;



@protocol OAIPaymentAgreementResponse
@end

@interface OAIPaymentAgreementResponse : OAIObject

/* Container reference in the transaction logs. This number uniquely identifies the transaction in the container. 
 */
@property(nonatomic) NSString* transactionReceipt;
/* The payment token of the payment agreement. The payment token is a unique identifier for the payment agreement. [optional]
 */
@property(nonatomic) NSString* paymentToken;

@property(nonatomic) OAIPaymentAgreementResponsePaymentAgreement* paymentAgreement;

@property(nonatomic) OAIPaymentsSuccessResponseFraudResponse* fraudResponse;
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