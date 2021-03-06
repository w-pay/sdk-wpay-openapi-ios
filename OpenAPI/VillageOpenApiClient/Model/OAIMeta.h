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


#import "OAIMetaFraudPayload.h"
@protocol OAIMetaFraudPayload;
@class OAIMetaFraudPayload;



@protocol OAIMeta
@end

// TODO: Manual fix
@interface OAIMeta : OAIObject


@property(nonatomic) OAIMetaFraudPayload* fraud;
/* Meta Object containing responses to a step up challenges [optional]
 */
@property(nonatomic) NSArray<NSObject*>* challengeResponses;
/* Meta Object containing callback urls to be passed to payment sessions [optional]
 */
@property(nonatomic) NSArray<NSObject*>* callbacks;

@end
