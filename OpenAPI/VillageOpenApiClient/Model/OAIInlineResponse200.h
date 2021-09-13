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


#import "OAIGiftingProductList.h"
#import "OAIMetaPaginated.h"
@protocol OAIGiftingProductList;
@class OAIGiftingProductList;
@protocol OAIMetaPaginated;
@class OAIMetaPaginated;



@protocol OAIInlineResponse200
@end

@interface OAIInlineResponse200 : OAIObject


@property(nonatomic) OAIGiftingProductList* data;

@property(nonatomic) OAIMetaPaginated* meta;

@end