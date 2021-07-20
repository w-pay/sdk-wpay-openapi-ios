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


#import "OAICreditCardStepUp.h"
@protocol OAICreditCardStepUp;
@class OAICreditCardStepUp;



@protocol OAIListPaymentInstrumentsResponseCreditCards
@end

@interface OAIListPaymentInstrumentsResponseCreditCards : OAIObject

/* The credit card payment instrument id. 
 */
@property(nonatomic) NSString* paymentInstrumentId;
/* The credit card payment token. The payment token is a unique identifier for the payment instrument. 
 */
@property(nonatomic) NSString* paymentToken;
/* The status of the payment instrument in the container. 
 */
@property(nonatomic) NSString* status;
/* The timestamp the payment instrument was last updated in the container. The timestamp format is ISO8601. 
 */
@property(nonatomic) NSString* lastUpdated;
/* The timestamp the payment instrument was last used in the container. The timestamp format is ISO8601. Will be null if never used. 
 */
@property(nonatomic) NSString* lastUsed;
/* The timestamp for when the payment instrument was added. The timestamp format is ISO8601. 
 */
@property(nonatomic) NSDate* createdOn;
/* A flag to indicate if this payment instrument is the primary instrument in the container. 
 */
@property(nonatomic) NSNumber* primary;
/* A flag to indicate if the merchant profile in the container allows the use of this payment instrument. 
 */
@property(nonatomic) NSNumber* allowed;
/* The year of the expiry date of the credit card. 
 */
@property(nonatomic) NSString* expiryYear;
/* The month of the expiry date of the credit card. 
 */
@property(nonatomic) NSString* expiryMonth;
/* The credit card scheme. 
 */
@property(nonatomic) NSString* scheme;
/* The suffix (last 4 digits) of the credit card number. 
 */
@property(nonatomic) NSString* cardSuffix;
/* A flag to indicate if the CVV of the credit card has been validated. 
 */
@property(nonatomic) NSNumber* cvvValidated;
/* The nickname of the credit card instrument in the container. 
 */
@property(nonatomic) NSString* cardName;
/* A flag to indicate if the credit card is expired. 
 */
@property(nonatomic) NSNumber* expired;
/* A flag to indicate if payments with this credit card requires a CVV check. 
 */
@property(nonatomic) NSNumber* requiresCVV;
/* The URL of an iframe. This iframe is used to capture a credit card expiry and CVV. 
 */
@property(nonatomic) NSString* updateURL;

@property(nonatomic) OAICreditCardStepUp* stepUp;

@end
