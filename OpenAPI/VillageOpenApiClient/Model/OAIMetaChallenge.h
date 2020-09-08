#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Village Wallet
* APIs for Village Wallet
*
* The version of the OpenAPI document: 0.0.7
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAIMetaChallengeChallengeResponses.h"
@protocol OAIMetaChallengeChallengeResponses;
@class OAIMetaChallengeChallengeResponses;



@protocol OAIMetaChallenge
@end

@interface OAIMetaChallenge : OAIObject

/* The collection of challenges [optional]
 */
@property(nonatomic) NSArray<OAIMetaChallengeChallengeResponses>* challengeResponses;

@end
