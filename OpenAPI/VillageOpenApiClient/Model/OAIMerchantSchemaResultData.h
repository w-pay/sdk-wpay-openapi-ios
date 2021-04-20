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



@protocol OAIMerchantSchemaResultData
@end

@interface OAIMerchantSchemaResultData : OAIObject

/* A list of IDs for the currently valid schemas for this merchant 
 */
@property(nonatomic) NSArray<OAIMerchantSchemaSummary>* schemas;

@end
