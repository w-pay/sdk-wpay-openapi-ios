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





@protocol OAIVerifyPaymentInstrumentsSuccessResponseFraudResponse
@end

@interface OAIVerifyPaymentInstrumentsSuccessResponseFraudResponse : OAIObject

/* The fraud check client id. Will be null if the fraud check was skipped. 
 */
@property(nonatomic) NSString* clientId;
/* The fraud check reason code. Will be null if the fraud check was skipped. 
 */
@property(nonatomic) NSString* reasonCode;
/* The fraud check decision. Will be null if the fraud check was skipped. 
 */
@property(nonatomic) NSString* decision;

@end
