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


#import "OAICreatePaymentAgreementRequestBillingAddress.h"
#import "OAICreatePaymentAgreementRequestShippingAddress.h"
#import "OAIUpdatePaymentAgreementRequestFraudPayload.h"
#import "OAIUpdatePaymentAgreementRequestPaymentAgreement.h"
@protocol OAICreatePaymentAgreementRequestBillingAddress;
@class OAICreatePaymentAgreementRequestBillingAddress;
@protocol OAICreatePaymentAgreementRequestShippingAddress;
@class OAICreatePaymentAgreementRequestShippingAddress;
@protocol OAIUpdatePaymentAgreementRequestFraudPayload;
@class OAIUpdatePaymentAgreementRequestFraudPayload;
@protocol OAIUpdatePaymentAgreementRequestPaymentAgreement;
@class OAIUpdatePaymentAgreementRequestPaymentAgreement;



@protocol OAIUpdatePaymentAgreementRequest
@end

@interface OAIUpdatePaymentAgreementRequest : OAIObject

/* A merchant application specific reference number. This number should uniquely identify the transaction in the merchant’s system. 
 */
@property(nonatomic) NSString* clientReference;
/* A merchant application specific reference number. This number should uniquely identify the customer in the merchant’s system. [optional]
 */
@property(nonatomic) NSString* customerRef;

@property(nonatomic) OAICreatePaymentAgreementRequestBillingAddress* billingAddress;

@property(nonatomic) OAICreatePaymentAgreementRequestShippingAddress* shippingAddress;

@property(nonatomic) OAIUpdatePaymentAgreementRequestPaymentAgreement* paymentAgreement;

@property(nonatomic) OAIUpdatePaymentAgreementRequestFraudPayload* fraudPayload;

@end
