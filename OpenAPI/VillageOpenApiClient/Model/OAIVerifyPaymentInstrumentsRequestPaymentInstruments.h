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





@protocol OAIVerifyPaymentInstrumentsRequestPaymentInstruments
@end

@interface OAIVerifyPaymentInstrumentsRequestPaymentInstruments : OAIObject

/* The payment token. 
 */
@property(nonatomic) NSString* paymentToken;
/* The step-up token is used to track additional credit card information (eg. CVV and expiry) attached to the payment instrument. It's only valid for a predefined time and if an expired step-up token is used during payment, the payment for that instrument will fail and the user will have to get a new step-up token before retrying the payment. A step-up token is returned in the response of a credit card iframe. This property is currently only required for credit card instruments and only if specific credit card information (eg. CVV and expiry) is required during payment. [optional]
 */
@property(nonatomic) NSString* stepUpToken;

@end
