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


#import "OAIGetCustomerPaymentInstrumentResultDataPaymentInstrumentDetailStepUp.h"
@protocol OAIGetCustomerPaymentInstrumentResultDataPaymentInstrumentDetailStepUp;
@class OAIGetCustomerPaymentInstrumentResultDataPaymentInstrumentDetailStepUp;



@protocol OAIGetCustomerPaymentInstrumentResultDataPaymentInstrumentDetail
@end

@interface OAIGetCustomerPaymentInstrumentResultDataPaymentInstrumentDetail : OAIObject

/* The suffix (last 4 digits) of the gift card number. 
 */
@property(nonatomic) NSString* cardSuffix;
/* The gift card program name. 
 */
@property(nonatomic) NSString* programName;

@property(nonatomic) OAIGetCustomerPaymentInstrumentResultDataPaymentInstrumentDetailStepUp* stepUp;

@end
