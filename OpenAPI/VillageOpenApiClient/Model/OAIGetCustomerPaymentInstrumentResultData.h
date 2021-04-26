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


#import "OAIGetCustomerPaymentInstrumentResultDataPaymentInstrumentDetail.h"
@protocol OAIGetCustomerPaymentInstrumentResultDataPaymentInstrumentDetail;
@class OAIGetCustomerPaymentInstrumentResultDataPaymentInstrumentDetail;



@protocol OAIGetCustomerPaymentInstrumentResultData
@end

@interface OAIGetCustomerPaymentInstrumentResultData : OAIObject

/* The payment instrument id. 
 */
@property(nonatomic) NSString* paymentInstrumentId;
/* The payment token. The payment token is a unique identifier for the payment instrument. 
 */
@property(nonatomic) NSString* paymentToken;
/* The type of the payment instrument. 
 */
@property(nonatomic) NSString* paymentInstrumentType;
/* The status of the payment instrument in the container. 
 */
@property(nonatomic) NSString* status;
/* The timestamp for when the payment instrument was added. The timestamp format is ISO8601. 
 */
@property(nonatomic) NSDate* createdOn;
/* The timestamp the payment instrument was last updated in the container. The timestamp format is ISO8601. 
 */
@property(nonatomic) NSDate* lastUpdated;
/* The timestamp the payment instrument was last used in the container. The timestamp format is ISO8601. Will be null if never used. 
 */
@property(nonatomic) NSDate* lastUsed;
/* A flag to indicate if this payment instrument is the primary instrument in the container. 
 */
@property(nonatomic) NSNumber* primary;
/* A flag to indicate if the merchant profile in the container allows the use of this payment instrument. 
 */
@property(nonatomic) NSNumber* allowed;

@property(nonatomic) OAIGetCustomerPaymentInstrumentResultDataPaymentInstrumentDetail* paymentInstrumentDetail;

@end