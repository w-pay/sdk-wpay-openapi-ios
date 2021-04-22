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





@protocol OAIPaymentsSuccessResponseStepUp1
@end

@interface OAIPaymentsSuccessResponseStepUp1 : OAIObject

/* The type of the step up action. For apple pay this will be REFRESH_TOKEN. 
 */
@property(nonatomic) NSString* type;
/* A flag to indicate if this step up (action) is mandatory. 
 */
@property(nonatomic) NSNumber* mandatory;
/* The URL of the endpoint to use to update the apple pay token. 
 */
@property(nonatomic) NSString* url;

@end
