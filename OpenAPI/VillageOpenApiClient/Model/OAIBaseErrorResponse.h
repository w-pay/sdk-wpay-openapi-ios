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





@protocol OAIBaseErrorResponse
@end

@interface OAIBaseErrorResponse : OAIObject

/* The http status code (4xx and 5xx HTTP status codes). 
 */
@property(nonatomic) NSNumber* httpStatusCode;
/* The error code. 
 */
@property(nonatomic) NSString* errorCode;
/* The error message. 
 */
@property(nonatomic) NSString* errorMessage;
/* The error detail. 
 */
@property(nonatomic) NSString* errorDetail;

@end
