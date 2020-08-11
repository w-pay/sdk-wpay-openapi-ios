#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Village Wallet
* APIs for Village Wallet
*
* The version of the OpenAPI document: 0.0.5
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAIBasket.h"
#import "OAIMerchantPayload.h"
#import "OAIPosPayload.h"
@protocol OAIBasket;
@class OAIBasket;
@protocol OAIMerchantPayload;
@class OAIMerchantPayload;
@protocol OAIPosPayload;
@class OAIPosPayload;



@protocol OAIMerchantPaymentDetailAllOf
@end

@interface OAIMerchantPaymentDetailAllOf : OAIObject


@property(nonatomic) OAIBasket* basket;

@property(nonatomic) OAIPosPayload* posPayload;

@property(nonatomic) OAIMerchantPayload* merchantPayload;

@end
