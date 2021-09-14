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





@protocol OAIGuestTokenizeGiftcardResponseGiftCard
@end

@interface OAIGuestTokenizeGiftcardResponseGiftCard : OAIObject

/* The new payment instrument id to be used for payments. 
 */
@property(nonatomic) NSString* paymentInstrumentId;
/* The status of the payment instrument in the container. 
 */
@property(nonatomic) NSString* status;
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
