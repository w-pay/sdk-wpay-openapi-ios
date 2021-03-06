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





@protocol OAIMetaChallengeChallengeResponses
@end

@interface OAIMetaChallengeChallengeResponses : OAIObject

/* The instrument id related to the step up challenge 
 */
@property(nonatomic) NSString* instrumentId;
/* The type of token that has been provided 
 */
@property(nonatomic) NSString* type;
/* The value requested by the challenge 
 */
@property(nonatomic) NSString* token;
/* An optional reference that could be used for audit tracing [optional]
 */
@property(nonatomic) NSString* reference;

@end
