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


#import "OAIHealthCheckResultData.h"
@protocol OAIHealthCheckResultData;
@class OAIHealthCheckResultData;



@protocol OAIHealthCheckResult
@end

@interface OAIHealthCheckResult : OAIObject


@property(nonatomic) OAIHealthCheckResultData* data;
/* Object to contain any metadata 
 */
@property(nonatomic) NSDictionary<NSString*, NSObject*>* meta;

@end
