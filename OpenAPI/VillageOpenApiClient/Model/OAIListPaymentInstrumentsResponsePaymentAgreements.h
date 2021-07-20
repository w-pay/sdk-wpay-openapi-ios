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


#import "OAIListPaymentInstrumentsResponseStepUp1.h"
@protocol OAIListPaymentInstrumentsResponseStepUp1;
@class OAIListPaymentInstrumentsResponseStepUp1;



@protocol OAIListPaymentInstrumentsResponsePaymentAgreements
@end

@interface OAIListPaymentInstrumentsResponsePaymentAgreements : OAIObject

/* The payment token of the payment agreement. The payment token is a unique identifier for the payment agreement. 
 */
@property(nonatomic) NSString* paymentToken;
/* The status of the payment agreement in the container. 
 */
@property(nonatomic) NSString* status;
/* The timestamp the payment agreement was last updated in the container. The timestamp format is ISO8601. 
 */
@property(nonatomic) NSString* lastUpdated;
/* The timestamp the payment agreement was last used in the container. The timestamp format is ISO8601. Will be null if never used. 
 */
@property(nonatomic) NSString* lastUsed;
/* The timestamp for when the payment instrument was added. The timestamp format is ISO8601. 
 */
@property(nonatomic) NSDate* createdOn;
/* A flag to indicate if this payment instrument is the primary instrument in the container. Not used for payment agreements. 
 */
@property(nonatomic) NSNumber* primary;
/* A flag to indicate if the merchant profile in the container allows the use of this payment agreement. 
 */
@property(nonatomic) NSNumber* allowed;
/* The payment agreement type. 
 */
@property(nonatomic) NSString* type;
/* The payment agreement payment instrument id that will be used for the charges. 
 */
@property(nonatomic) NSString* paymentInstrumentId;
/* The credit card scheme. [optional]
 */
@property(nonatomic) NSString* scheme;
/* The suffix (last 4 digits) of the credit card number. [optional]
 */
@property(nonatomic) NSString* cardSuffix;
/* The month of the expiry date of the credit card. [optional]
 */
@property(nonatomic) NSString* expiryMonth;
/* The year of the expiry date of the credit card. [optional]
 */
@property(nonatomic) NSString* expiryYear;
/* The payment agreement start date and time. The timestamp format is ISO8601. 
 */
@property(nonatomic) NSString* startDate;
/* The payment agreement end date and time. The timestamp format is ISO8601. 
 */
@property(nonatomic) NSString* endDate;
/* The payment agreement charge frequency. 
 */
@property(nonatomic) NSString* chargeFrequency;
/* The amount that will be charged at the frequency specified in the payment agreement. 
 */
@property(nonatomic) NSNumber* chargeAmount;
/* The current charge cycle number. 
 */
@property(nonatomic) NSNumber* chargeCycle;
/* A flag to indicate if the payment agreement is expired. 
 */
@property(nonatomic) NSString* expired;
/* The URL of the endpoint to use to update the payment agreement. 
 */
@property(nonatomic) NSString* updateURL;

@property(nonatomic) OAIListPaymentInstrumentsResponseStepUp1* stepUp;

@end
