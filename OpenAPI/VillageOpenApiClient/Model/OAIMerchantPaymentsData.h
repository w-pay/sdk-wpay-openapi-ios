#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Village Wallet
* APIs for Village Wallet
*
* The version of the OpenAPI document: 0.0.7
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAIBasket.h"
#import "OAIMerchantPayload.h"
#import "OAIPosPayload.h"
@protocol OAIBasket;
@class OAIBasket;
@protocol OAIMerchantPayload;
@class OAIMerchantPayload;
@protocol OAIPosPayload;
@class OAIPosPayload;



@protocol OAIMerchantPaymentsData
@end

@interface OAIMerchantPaymentsData : OAIObject

/* The unique reference for the payment as defined by the Merchant 
 */
@property(nonatomic) NSString* merchantReferenceId;
/* The gross amount to be paid.  Must be positive 
 */
@property(nonatomic) NSNumber* grossAmount;
/* Flag indicating whether a QR code should be created and returned in the response [optional]
 */
@property(nonatomic) NSNumber* generateQR;
/* The number of times that the payment request can be used to create a payment.  Defaults to 1 if absent.  If set to 0 then the request can be used an unlimited number of times [optional]
 */
@property(nonatomic) NSNumber* maxUses;
/* The time in seconds that the payment request should remain valid.  After this time any use of the request to create a payment will fail. Default value is 0 which indicates that the code will not expire until it is deleted [optional]
 */
@property(nonatomic) NSNumber* timeToLivePayment;
/* The time in seconds that the QR code should remain valid.  After this time any use of the request to create a payment will fail. Default value is 0 which indicates that the code will not expire until it is deleted [optional]
 */
@property(nonatomic) NSNumber* timeToLiveQR;
/* The ID of a specific wallet for which the payment is intended.  Can be used in scenarios where a customer has previously requested that their wallet ID is retained for repeat purchase.  If supplied the payment can only be used by the intended wallet.  If absent then any wallet can create a payment against the payment request [optional]
 */
@property(nonatomic) NSString* specificWalletId;

@property(nonatomic) OAIBasket* basket;

@property(nonatomic) OAIPosPayload* posPayload;

@property(nonatomic) OAIMerchantPayload* merchantPayload;

@end
