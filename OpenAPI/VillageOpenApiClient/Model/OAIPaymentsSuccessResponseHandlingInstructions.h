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





@protocol OAIPaymentsSuccessResponseHandlingInstructions
@end

@interface OAIPaymentsSuccessResponseHandlingInstructions : OAIObject

/* The handling instruction code. 
 */
@property(nonatomic) NSString* instructionCode;
/* The handling instruction message. 
 */
@property(nonatomic) NSString* instructionMessage;

@end
