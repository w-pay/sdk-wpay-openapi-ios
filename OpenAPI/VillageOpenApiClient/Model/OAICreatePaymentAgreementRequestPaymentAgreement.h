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





@protocol OAICreatePaymentAgreementRequestPaymentAgreement
@end

@interface OAICreatePaymentAgreementRequestPaymentAgreement : OAIObject

/* The payment agreement type. 
 */
@property(nonatomic) NSString* type;
/* The payment agreement payment instrument id that will be used for the charges. 
 */
@property(nonatomic) NSString* paymentInstrumentId;
/* The payment agreement start date and time. The timestamp format is ISO8601. [optional]
 */
@property(nonatomic) NSString* startDate;
/* The payment agreement end date and time. The timestamp format is ISO8601. [optional]
 */
@property(nonatomic) NSString* endDate;
/* The payment agreement charge frequency. 
 */
@property(nonatomic) NSString* chargeFrequency;
/* The amount that will be charged at the frequency specified in the payment agreement. 
 */
@property(nonatomic) NSNumber* chargeAmount;
/* A flag to indicate if a charge transaction must be performed at the time of payment agreement creation. This in convenient in the cases where a customer wants to process a first charge transaction immediately at payment agreement creation. [optional]
 */
@property(nonatomic) NSNumber* immediateCharge;
/* The step-up token is used to track additional credit card information (eg. CVV and expiry) attached to the payment instrument. It's only valid for a predefined time and if an expired step-up token is used during validation, the validation of that instrument will fail and the user will have to get a new step-up token before retrying the API call. A step-up token is returned in the response of a credit card iframe. This property is only required for credit card instruments and only if specific credit card information (eg. CVV and expiry) is required during the API call. [optional]
 */
@property(nonatomic) NSString* stepUpToken;

@end
