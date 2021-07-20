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


#import "OAIChargePaymentAgreementRequestTransactionTypeApplePay.h"
#import "OAIChargePaymentAgreementRequestTransactionTypeGooglePay.h"
@protocol OAIChargePaymentAgreementRequestTransactionTypeApplePay;
@class OAIChargePaymentAgreementRequestTransactionTypeApplePay;
@protocol OAIChargePaymentAgreementRequestTransactionTypeGooglePay;
@class OAIChargePaymentAgreementRequestTransactionTypeGooglePay;



@protocol OAIChargePaymentAgreementRequestTransactionType
@end

@interface OAIChargePaymentAgreementRequestTransactionType : OAIObject

/* The container transaction type to use for credit card instruments. This property is only required if the charge request is using a credit card instrument. [optional]
 */
@property(nonatomic) NSString* creditCard;
/* The container transaction type to use for gift card instruments. This property is only required if the charge request is using a gift card instrument. Only PURCHASE is currently supported for gift card instruments. [optional]
 */
@property(nonatomic) NSString* giftCard;
/* The container transaction type to use for paypal instruments. This property is only required if the charge request is using a paypal instrument. Only PURCHASE is currently supported for paypal instruments. [optional]
 */
@property(nonatomic) NSString* payPal;

@property(nonatomic) OAIChargePaymentAgreementRequestTransactionTypeGooglePay* googlePay;

@property(nonatomic) OAIChargePaymentAgreementRequestTransactionTypeApplePay* applePay;

@end
