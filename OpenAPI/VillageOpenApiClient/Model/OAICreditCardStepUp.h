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





@protocol OAICreditCardStepUp
@end

@interface OAICreditCardStepUp : OAIObject

/* The type of the step up action. For credit cards this will be CAPTURE_CVV which identifies that the consumer must capture the CVV prior to payment. 
 */
@property(nonatomic) NSString* type;
/* A flag to indicate if this step up (action) is mandatory. 
 */
@property(nonatomic) NSNumber* mandatory;
/* The URL of an iframe. This iframe is used to capture a credit card expiry and CVV or CVV only. The URL will automatically switch between expiry and CVV or CVV only endpoints based on the container requirement. 
 */
@property(nonatomic) NSString* url;

@end
