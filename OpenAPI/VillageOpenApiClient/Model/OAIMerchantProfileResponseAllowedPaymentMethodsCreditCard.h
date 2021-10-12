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





@protocol OAIMerchantProfileResponseAllowedPaymentMethodsCreditCard
@end

@interface OAIMerchantProfileResponseAllowedPaymentMethodsCreditCard : OAIObject

/* The allowed networks (schemes) for credit card transactions. 
 */
@property(nonatomic) NSArray<NSString*>* allowedNetworks;
/* The allowed transaction types for credit card transactions. 
 */
@property(nonatomic) NSArray<NSString*>* allowedTransactionTypes;
/* This property indicates the status of the credit card service in the container. 
 */
@property(nonatomic) NSString* serviceStatus;

@end
