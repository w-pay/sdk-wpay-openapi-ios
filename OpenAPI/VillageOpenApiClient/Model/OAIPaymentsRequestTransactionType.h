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


#import "OAIPaymentsRequestTransactionTypeApplePay.h"
#import "OAIPaymentsRequestTransactionTypeGooglePay.h"
@protocol OAIPaymentsRequestTransactionTypeApplePay;
@class OAIPaymentsRequestTransactionTypeApplePay;
@protocol OAIPaymentsRequestTransactionTypeGooglePay;
@class OAIPaymentsRequestTransactionTypeGooglePay;



@protocol OAIPaymentsRequestTransactionType
@end

@interface OAIPaymentsRequestTransactionType : OAIObject

/* The container transaction type to use for credit card instruments. This property is only required if the payments request contains credit card instruments. [optional]
 */
@property(nonatomic) NSString* creditCard;
/* The container transaction type to use for gift card instruments. This property is only required if the payments request contains gift card instruments. [optional]
 */
@property(nonatomic) NSString* giftCard;
/* The container transaction type to use for paypal instruments. This property is only required if the payments request contains paypal instruments. Only PURCHASE is currently supported for paypal instruments. [optional]
 */
@property(nonatomic) NSString* payPal;

@property(nonatomic) OAIPaymentsRequestTransactionTypeGooglePay* googlePay;

@property(nonatomic) OAIPaymentsRequestTransactionTypeApplePay* applePay;

@end
