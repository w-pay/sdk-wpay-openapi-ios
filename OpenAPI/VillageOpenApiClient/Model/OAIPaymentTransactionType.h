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


#import "OAIPaymentTransactionTypeApplePay.h"
#import "OAIPaymentTransactionTypeGooglePay.h"
@protocol OAIPaymentTransactionTypeApplePay;
@class OAIPaymentTransactionTypeApplePay;
@protocol OAIPaymentTransactionTypeGooglePay;
@class OAIPaymentTransactionTypeGooglePay;



@protocol OAIPaymentTransactionType
@end

@interface OAIPaymentTransactionType : OAIObject

/* The container transaction type to use for credit card instruments. This property is only required if the payments request contains credit card instruments. [optional]
 */
@property(nonatomic) NSString* creditCard;
/* The container transaction type to use for gift card instruments. This property is only required if the payments request contains gift card instruments. [optional]
 */
@property(nonatomic) NSString* giftCard;
/* The container transaction type to use for paypal instruments. This property is only required if the payments request contains paypal instruments. Only PURCHASE is currently supported for paypal instruments. [optional]
 */
@property(nonatomic) NSString* payPal;

@property(nonatomic) OAIPaymentTransactionTypeGooglePay* googlePay;

@property(nonatomic) OAIPaymentTransactionTypeApplePay* applePay;

@end
