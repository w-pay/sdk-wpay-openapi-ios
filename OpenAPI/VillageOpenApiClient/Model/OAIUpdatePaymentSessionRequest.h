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


#import "OAIInstoreCustomerPaymentSessionPaymentSessionIdData.h"
#import "OAIMeta.h"
@protocol OAIInstoreCustomerPaymentSessionPaymentSessionIdData;
@class OAIInstoreCustomerPaymentSessionPaymentSessionIdData;
@protocol OAIMeta;
@class OAIMeta;



@protocol OAIUpdatePaymentSessionRequest
@end

@interface OAIUpdatePaymentSessionRequest : OAIObject


@property(nonatomic) OAIInstoreCustomerPaymentSessionPaymentSessionIdData* data;

@property(nonatomic) OAIMeta* meta;

@end
