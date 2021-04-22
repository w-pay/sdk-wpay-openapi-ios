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


#import "OAICompletionsRequestCompletions.h"
@protocol OAICompletionsRequestCompletions;
@class OAICompletionsRequestCompletions;



@protocol OAICompletionsRequest
@end

@interface OAICompletionsRequest : OAIObject

/* A merchant application specific reference number. This number should uniquely identify the transaction in the merchant’s system. 
 */
@property(nonatomic) NSString* clientReference;
/* The merchant order number of the transaction. 
 */
@property(nonatomic) NSString* orderNumber;

@property(nonatomic) NSArray<OAICompletionsRequestCompletions>* completions;

@end
