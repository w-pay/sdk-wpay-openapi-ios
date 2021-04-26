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





@protocol OAIPaymentAgreementResponsePaymentAgreement
@end

@interface OAIPaymentAgreementResponsePaymentAgreement : OAIObject

/* The payment agreement type. 
 */
@property(nonatomic) NSString* type;
/* The payment agreement payment instrument id that will be used for the charges. 
 */
@property(nonatomic) NSString* paymentInstrumentId;
/* The type of the payment instrument used in the payment agreement. 
 */
@property(nonatomic) NSString* paymentInstrumentType;
/* The credit card scheme. 
 */
@property(nonatomic) NSString* scheme;
/* The suffix (last 4 digits) of the credit card number. 
 */
@property(nonatomic) NSString* cardSuffix;
/* The month of the expiry date of the credit card. 
 */
@property(nonatomic) NSString* expiryMonth;
/* The year of the expiry date of the credit card. 
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

@end