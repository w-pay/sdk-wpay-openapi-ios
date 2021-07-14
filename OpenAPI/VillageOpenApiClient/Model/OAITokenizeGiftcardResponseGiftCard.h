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





@protocol OAITokenizeGiftcardResponseGiftCard
@end

@interface OAITokenizeGiftcardResponseGiftCard : OAIObject

/* The new payment instrument id to be used for payments. 
 */
@property(nonatomic) NSString* paymentInstrumentId;
/* The status of the payment instrument in the container. 
 */
@property(nonatomic) NSString* status;
/* The timestamp the payment instrument was last updated in the container. The timestamp format is ISO8601. 
 */
@property(nonatomic) NSString* lastUpdated;
/* The timestamp the payment instrument was last used in the container. The timestamp format is ISO8601. Will be null if never used. 
 */
@property(nonatomic) NSString* lastUsed;
/* A flag to indicate if this payment instrument is the primary instrument in the container. 
 */
@property(nonatomic) NSNumber* primary;
/* A flag to indicate if the merchant profile in the container allows the use of this payment instrument. 
 */
@property(nonatomic) NSNumber* allowed;
/* The gift card program name. 
 */
@property(nonatomic) NSString* programName;
/* The suffix (last 4 digits) of the gift card number. 
 */
@property(nonatomic) NSString* cardSuffix;

@end
