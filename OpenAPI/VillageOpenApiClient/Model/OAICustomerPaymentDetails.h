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


#import "OAICustomerPaymentDetailsData.h"
#import "OAIMeta.h"
@protocol OAICustomerPaymentDetailsData;
@class OAICustomerPaymentDetailsData;
@protocol OAIMeta;
@class OAIMeta;



@protocol OAICustomerPaymentDetails
@end

@interface OAICustomerPaymentDetails : OAIObject


@property(nonatomic) OAICustomerPaymentDetailsData* data;

@property(nonatomic) OAIMeta* meta;

@end
