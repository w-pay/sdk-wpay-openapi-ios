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


#import "OAICustomerPaymentSessionPaymentSessionIdData.h"
@protocol OAICustomerPaymentSessionPaymentSessionIdData;
@class OAICustomerPaymentSessionPaymentSessionIdData;



@protocol OAIUpdatePaymentSessionRequest1
@end

@interface OAIUpdatePaymentSessionRequest1 : OAIObject


@property(nonatomic) OAICustomerPaymentSessionPaymentSessionIdData* data;
/* Object to contain any metadata 
 */
@property(nonatomic) NSDictionary<NSString*, NSObject*>* meta;

@end