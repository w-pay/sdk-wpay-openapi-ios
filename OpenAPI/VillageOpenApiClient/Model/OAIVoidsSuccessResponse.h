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


#import "OAIVoidsSuccessResponseVoidResponses.h"
@protocol OAIVoidsSuccessResponseVoidResponses;
@class OAIVoidsSuccessResponseVoidResponses;



@protocol OAIVoidsSuccessResponse
@end

@interface OAIVoidsSuccessResponse : OAIObject

/* Container reference in the transaction logs. This number uniquely identifies the whole/grouped transaction in the container. 
 */
@property(nonatomic) NSString* transactionReceipt;
/* A flag to indicate if a split void was only partially successful, ie. at least 1 of the voids had a successful result. 
 */
@property(nonatomic) NSNumber* partialSuccess;

@property(nonatomic) NSArray<OAIVoidsSuccessResponseVoidResponses>* voidResponses;

@end
