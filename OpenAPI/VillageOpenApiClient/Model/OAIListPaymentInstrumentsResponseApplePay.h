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


#import "OAIListPaymentInstrumentsResponseApplePayStepUp.h"
@protocol OAIListPaymentInstrumentsResponseApplePayStepUp;
@class OAIListPaymentInstrumentsResponseApplePayStepUp;



@protocol OAIListPaymentInstrumentsResponseApplePay
@end

@interface OAIListPaymentInstrumentsResponseApplePay : OAIObject

/* The apple pay payment instrument id. 
 */
@property(nonatomic) NSString* paymentInstrumentId;
/* The apple pay payment token. The payment token is a unique identifier for the payment instrument. 
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

@property(nonatomic) OAIListPaymentInstrumentsResponseApplePayStepUp* stepUp;

@end
