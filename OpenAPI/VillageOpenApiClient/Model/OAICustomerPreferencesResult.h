#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Wpay APIs
* Wpay APIs for payments and gifting
*
* The version of the OpenAPI document: 1.0.5
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAIMeta.h"
#import "OAIPreferencesCustomer.h"
@protocol OAIMeta;
@class OAIMeta;
@protocol OAIPreferencesCustomer;
@class OAIPreferencesCustomer;



@protocol OAICustomerPreferencesResult
@end

@interface OAICustomerPreferencesResult : OAIObject


@property(nonatomic) OAIPreferencesCustomer* data;

@property(nonatomic) OAIMeta* meta;

@end
