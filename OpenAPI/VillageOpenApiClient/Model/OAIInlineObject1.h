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


#import "OAIGiftingProductOrderItem.h"
#import "OAIGiftingProductsOrderBillingContact.h"
@protocol OAIGiftingProductOrderItem;
@class OAIGiftingProductOrderItem;
@protocol OAIGiftingProductsOrderBillingContact;
@class OAIGiftingProductsOrderBillingContact;



@protocol OAIInlineObject1
@end

@interface OAIInlineObject1 : OAIObject

/* The instrumentId to be used for the order.  Must not be a stored gift card 
 */
@property(nonatomic) NSString* instrumentId;
/* Unique reference for the order supplied by the client 
 */
@property(nonatomic) NSString* referenceId;
/* Face value of the gift card 
 */
@property(nonatomic) NSNumber* subTotalAmount;
/* Eligible discount amount. In case of no discounts, value will be 0 
 */
@property(nonatomic) NSNumber* discountAmount;
/* Net amount payable 
 */
@property(nonatomic) NSNumber* totalOrderAmount;

@property(nonatomic) OAIGiftingProductsOrderBillingContact* billingContact;
/* Gift cards to be included in the order.  Currently only supports a single entry.  Array is for future roadmap 
 */
@property(nonatomic) NSArray<OAIGiftingProductOrderItem>* orderItems;

@end
