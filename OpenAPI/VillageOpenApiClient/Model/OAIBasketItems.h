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





@protocol OAIBasketItems
@end

@interface OAIBasketItems : OAIObject

/* Short label for the basket item 
 */
@property(nonatomic) NSString* label;
/* Longer description of the basket item [optional]
 */
@property(nonatomic) NSString* _description;
/* The number of units of the item in the basket if multiple is possible.  Is a number to accommodate items charged by weight or length [optional]
 */
@property(nonatomic) NSNumber* quantity;
/* The unit price of the item.  May be positive or negative [optional]
 */
@property(nonatomic) NSNumber* unitPrice;
/* Optional display string for the measure of the unit [optional]
 */
@property(nonatomic) NSString* unitMeasure;
/* The total price of the item.  May be positive or negative [optional]
 */
@property(nonatomic) NSNumber* totalPrice;
/* Additional string/string key/value pairs for the item defined by the merchant [optional]
 */
@property(nonatomic) NSDictionary<NSString*, NSString*>* tags;

@end
