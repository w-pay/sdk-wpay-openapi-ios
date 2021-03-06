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


#import "OAIMeta.h"
@protocol OAIMeta;
@class OAIMeta;



@protocol OAIMerchantPreferencesResult
@end

@interface OAIMerchantPreferencesResult : OAIObject

/* A set of groups of key/value based preferences 
 */
@property(nonatomic) NSDictionary<NSString*, NSDictionary<NSString*, NSString*>*>* data;

@property(nonatomic) OAIMeta* meta;

@end
