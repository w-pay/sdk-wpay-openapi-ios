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


#import "OAIBasket.h"
#import "OAICommonPaymentBase.h"
#import "OAICustomerPaymentRequestDetailsAllOf.h"
@protocol OAIBasket;
@class OAIBasket;
@protocol OAICommonPaymentBase;
@class OAICommonPaymentBase;
@protocol OAICustomerPaymentRequestDetailsAllOf;
@class OAICustomerPaymentRequestDetailsAllOf;



@protocol OAICustomerPaymentRequestDetails
@end

@interface OAICustomerPaymentRequestDetails : OAIObject

/* The ID of this payment request 
 */
@property(nonatomic) NSString* paymentRequestId;
/* The unique reference for the payment as defined by the Merchant 
 */
@property(nonatomic) NSString* merchantReferenceId;
/* The gross amount to be paid.  Must be positive except for refunds 
 */
@property(nonatomic) NSNumber* grossAmount;
/* The ID of the merchant associated with this transaction 
 */
@property(nonatomic) NSString* merchantId;

@property(nonatomic) OAIBasket* basket;

@end
