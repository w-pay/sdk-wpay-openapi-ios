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


#import "OAIMerchantProfileResponseAllowedPaymentMethodsApplePay.h"
#import "OAIMerchantProfileResponseAllowedPaymentMethodsCreditCard.h"
#import "OAIMerchantProfileResponseAllowedPaymentMethodsGiftCard.h"
#import "OAIMerchantProfileResponseAllowedPaymentMethodsGooglePay.h"
#import "OAIMerchantProfileResponseAllowedPaymentMethodsPayPal.h"
#import "OAIMerchantProfileResponseAllowedPaymentMethodsPaymentAgreement.h"
@protocol OAIMerchantProfileResponseAllowedPaymentMethodsApplePay;
@class OAIMerchantProfileResponseAllowedPaymentMethodsApplePay;
@protocol OAIMerchantProfileResponseAllowedPaymentMethodsCreditCard;
@class OAIMerchantProfileResponseAllowedPaymentMethodsCreditCard;
@protocol OAIMerchantProfileResponseAllowedPaymentMethodsGiftCard;
@class OAIMerchantProfileResponseAllowedPaymentMethodsGiftCard;
@protocol OAIMerchantProfileResponseAllowedPaymentMethodsGooglePay;
@class OAIMerchantProfileResponseAllowedPaymentMethodsGooglePay;
@protocol OAIMerchantProfileResponseAllowedPaymentMethodsPayPal;
@class OAIMerchantProfileResponseAllowedPaymentMethodsPayPal;
@protocol OAIMerchantProfileResponseAllowedPaymentMethodsPaymentAgreement;
@class OAIMerchantProfileResponseAllowedPaymentMethodsPaymentAgreement;



@protocol OAIMerchantProfileResponseAllowedPaymentMethods
@end

@interface OAIMerchantProfileResponseAllowedPaymentMethods : OAIObject


@property(nonatomic) OAIMerchantProfileResponseAllowedPaymentMethodsGiftCard* giftCard;

@property(nonatomic) OAIMerchantProfileResponseAllowedPaymentMethodsCreditCard* creditCard;

@property(nonatomic) OAIMerchantProfileResponseAllowedPaymentMethodsPayPal* payPal;

@property(nonatomic) OAIMerchantProfileResponseAllowedPaymentMethodsGooglePay* googlePay;

@property(nonatomic) OAIMerchantProfileResponseAllowedPaymentMethodsApplePay* applePay;

@property(nonatomic) OAIMerchantProfileResponseAllowedPaymentMethodsPaymentAgreement* paymentAgreement;

@end
