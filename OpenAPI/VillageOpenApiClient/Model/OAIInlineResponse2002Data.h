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


#import "OAIInlineResponse2002DataOrderItems.h"
@protocol OAIInlineResponse2002DataOrderItems;
@class OAIInlineResponse2002DataOrderItems;



@protocol OAIInlineResponse2002Data
@end

@interface OAIInlineResponse2002Data : OAIObject

/* Quote reference. Can be used as a reference when placing the actual order 
 */
@property(nonatomic) NSString* quoteId;
/* Face value of the gift card 
 */
@property(nonatomic) NSNumber* subTotalAmount;
/* Eligible discount amount. In case of no discounts, value will be 0 
 */
@property(nonatomic) NSNumber* discountAmount;
/* Net amount payable 
 */
@property(nonatomic) NSNumber* totalOrderAmount;

@property(nonatomic) OAIInlineResponse2002DataOrderItems* orderItems;

@end
