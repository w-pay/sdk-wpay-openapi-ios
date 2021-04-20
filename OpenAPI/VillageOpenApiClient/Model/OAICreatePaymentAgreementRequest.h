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


#import "OAICreatePaymentAgreementRequestBillingAddress.h"
#import "OAICreatePaymentAgreementRequestPaymentAgreement.h"
#import "OAIVerifyPaymentInstrumentsRequestFraudPayload.h"
@protocol OAICreatePaymentAgreementRequestBillingAddress;
@class OAICreatePaymentAgreementRequestBillingAddress;
@protocol OAICreatePaymentAgreementRequestPaymentAgreement;
@class OAICreatePaymentAgreementRequestPaymentAgreement;
@protocol OAIVerifyPaymentInstrumentsRequestFraudPayload;
@class OAIVerifyPaymentInstrumentsRequestFraudPayload;



@protocol OAICreatePaymentAgreementRequest
@end

@interface OAICreatePaymentAgreementRequest : OAIObject

/* A merchant application specific reference number. This number should uniquely identify the transaction in the merchant’s system. 
 */
@property(nonatomic) NSString* clientReference;
/* A merchant application specific reference number. This number should uniquely identify the customer in the merchant’s system. [optional]
 */
@property(nonatomic) NSString* customerRef;
/* The merchant order number of the transaction. This property is only required if the 'immediateCharge' property is true. [optional]
 */
@property(nonatomic) NSString* orderNumber;

@property(nonatomic) OAICreatePaymentAgreementRequestBillingAddress* billingAddress;

@property(nonatomic) OAICreatePaymentAgreementRequestPaymentAgreement* paymentAgreement;

@property(nonatomic) OAIVerifyPaymentInstrumentsRequestFraudPayload* fraudPayload;

@end
