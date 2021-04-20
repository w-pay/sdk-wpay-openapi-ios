#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Wpay APIs
* Wpay APIs for payments and gifting
*
* The version of the OpenAPI document: 1.0.3
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAITokenizeGiftcardResponseGiftCard.h"
@protocol OAITokenizeGiftcardResponseGiftCard;
@class OAITokenizeGiftcardResponseGiftCard;



@protocol OAITokenizeGiftcardResponse
@end

@interface OAITokenizeGiftcardResponse : OAIObject


@property(nonatomic) OAITokenizeGiftcardResponseGiftCard* giftCard;
/* The current available balance of the gift card. 
 */
@property(nonatomic) NSNumber* balance;
/* The day of the expiry date of the gift card. 
 */
@property(nonatomic) NSString* expiryDay;
/* The month of the expiry date of the gift card. 
 */
@property(nonatomic) NSString* expiryMonth;
/* The year of the expiry date of the gift card. 
 */
@property(nonatomic) NSString* expiryYear;
/* A flag to indicate if the gift card is expired. 
 */
@property(nonatomic) NSNumber* expired;

@end
