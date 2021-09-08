#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Wpay APIs
* Wpay APIs for payments and gifting
*
* The version of the OpenAPI document: 1.0.6
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAIListPaymentInstrumentsResponseApplePay.h"
#import "OAIListPaymentInstrumentsResponseCreditCards.h"
#import "OAIListPaymentInstrumentsResponseGiftCards.h"
#import "OAIListPaymentInstrumentsResponseGooglePay.h"
#import "OAIListPaymentInstrumentsResponsePayPal.h"
#import "OAIListPaymentInstrumentsResponsePaymentAgreements.h"
@protocol OAIListPaymentInstrumentsResponseApplePay;
@class OAIListPaymentInstrumentsResponseApplePay;
@protocol OAIListPaymentInstrumentsResponseCreditCards;
@class OAIListPaymentInstrumentsResponseCreditCards;
@protocol OAIListPaymentInstrumentsResponseGiftCards;
@class OAIListPaymentInstrumentsResponseGiftCards;
@protocol OAIListPaymentInstrumentsResponseGooglePay;
@class OAIListPaymentInstrumentsResponseGooglePay;
@protocol OAIListPaymentInstrumentsResponsePayPal;
@class OAIListPaymentInstrumentsResponsePayPal;
@protocol OAIListPaymentInstrumentsResponsePaymentAgreements;
@class OAIListPaymentInstrumentsResponsePaymentAgreements;



@protocol OAIListPaymentInstrumentsResponse
@end

@interface OAIListPaymentInstrumentsResponse : OAIObject


@property(nonatomic) NSArray<OAIListPaymentInstrumentsResponseCreditCards>* creditCards;

@property(nonatomic) NSArray<OAIListPaymentInstrumentsResponseGiftCards>* giftCards;

@property(nonatomic) NSArray<OAIListPaymentInstrumentsResponsePayPal>* payPal;

@property(nonatomic) NSArray<OAIListPaymentInstrumentsResponsePaymentAgreements>* paymentAgreements;
/* Android Pay has been replaced by Google Pay. This property has been retained for backward compatibility and will always be null. 
 */
@property(nonatomic) NSObject* androidPay;

@property(nonatomic) OAIListPaymentInstrumentsResponseGooglePay* googlePay;

@property(nonatomic) OAIListPaymentInstrumentsResponseApplePay* applePay;

@end
