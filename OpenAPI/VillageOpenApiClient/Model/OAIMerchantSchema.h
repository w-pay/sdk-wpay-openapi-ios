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


#import "OAIInstoreMerchantSchemaData.h"
#import "OAIMeta.h"
@protocol OAIInstoreMerchantSchemaData;
@class OAIInstoreMerchantSchemaData;
@protocol OAIMeta;
@class OAIMeta;



@protocol OAIMerchantSchema
@end

@interface OAIMerchantSchema : OAIObject


@property(nonatomic) OAIInstoreMerchantSchemaData* data;

@property(nonatomic) OAIMeta* meta;

@end
