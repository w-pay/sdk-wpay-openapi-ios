#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Village Wallet
* APIs for Village Wallet
*
* The version of the OpenAPI document: 0.0.6
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAIMerchantPaymentSessionData.h"
@protocol OAIMerchantPaymentSessionData;
@class OAIMerchantPaymentSessionData;



@protocol OAICreatePaymentSessionRequest
@end

@interface OAICreatePaymentSessionRequest : OAIObject


@property(nonatomic) OAIMerchantPaymentSessionData* data;
/* Object to contain any metadata 
 */
@property(nonatomic) NSDictionary<NSString*, NSObject*>* meta;

@end
