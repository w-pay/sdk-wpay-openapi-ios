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


#import "OAIMerchantSchemaResultData.h"
#import "OAIMetaPaginated.h"
@protocol OAIMerchantSchemaResultData;
@class OAIMerchantSchemaResultData;
@protocol OAIMetaPaginated;
@class OAIMetaPaginated;



@protocol OAIMerchantSchemaResult
@end

@interface OAIMerchantSchemaResult : OAIObject


@property(nonatomic) OAIMerchantSchemaResultData* data;

@property(nonatomic) OAIMetaPaginated* meta;

@end
