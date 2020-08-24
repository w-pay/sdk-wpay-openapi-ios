#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Village Wallet
* APIs for Village Wallet
*
* The version of the OpenAPI document: 0.0.6
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAIBasket.h"
#import "OAIMerchantPayload.h"
#import "OAIMerchantPaymentDetailAllOf.h"
#import "OAIMerchantPaymentSummary.h"
#import "OAIPosPayload.h"
@protocol OAIBasket;
@class OAIBasket;
@protocol OAIMerchantPayload;
@class OAIMerchantPayload;
@protocol OAIMerchantPaymentDetailAllOf;
@class OAIMerchantPaymentDetailAllOf;
@protocol OAIMerchantPaymentSummary;
@class OAIMerchantPaymentSummary;
@protocol OAIPosPayload;
@class OAIPosPayload;



@protocol OAIMerchantPaymentDetail
@end

@interface OAIMerchantPaymentDetail : OAIObject

/* The ID of this payment request 
 */
@property(nonatomic) NSString* paymentRequestId;
/* The unique reference for the payment as defined by the Merchant 
 */
@property(nonatomic) NSString* merchantReferenceId;
/* The gross amount to be paid.  Must be positive except for refunds 
 */
@property(nonatomic) NSNumber* grossAmount;
/* The number of times that the payment request can be used to create a payment. If basent then request can be used an unlimited number of times [optional]
 */
@property(nonatomic) NSNumber* usesRemaining;
/* The ISO date/time for when the payment request will expire and become unusable for payments.  If absent then the payment request will not expire until it is deleted [optional]
 */
@property(nonatomic) NSDate* expiryTime;
/* The ID of a specific wallet for which the payment is intended.  If present then the payment can only be used by the intended wallet.  If absent then any wallet can create a payment against the payment request [optional]
 */
@property(nonatomic) NSString* specificWalletId;

@property(nonatomic) OAIBasket* basket;

@property(nonatomic) OAIPosPayload* posPayload;

@property(nonatomic) OAIMerchantPayload* merchantPayload;

@end
