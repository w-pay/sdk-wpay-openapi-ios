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


#import "OAIMerchantSchemaSummary.h"
@protocol OAIMerchantSchemaSummary;
@class OAIMerchantSchemaSummary;



@protocol OAICreateMerchantSchemaResults
@end

@interface OAICreateMerchantSchemaResults : OAIObject


@property(nonatomic) OAIMerchantSchemaSummary* data;
/* Object to contain any metadata 
 */
@property(nonatomic) NSDictionary<NSString*, NSObject*>* meta;

@end
