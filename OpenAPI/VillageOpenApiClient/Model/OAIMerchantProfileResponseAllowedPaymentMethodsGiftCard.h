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





@protocol OAIMerchantProfileResponseAllowedPaymentMethodsGiftCard
@end

@interface OAIMerchantProfileResponseAllowedPaymentMethodsGiftCard : OAIObject

/* The gift card bin numbers that are allowed for the relevant merchant. This does not indicate sub-bins, ie. exact gift card programs. 
 */
@property(nonatomic) NSArray<NSString*>* allowedBins;
/* This property indicates the status of the gift card service in the container. 
 */
@property(nonatomic) NSString* serviceStatus;
/* Flag to indicate if the pin is always required for gift card transactions. 
 */
@property(nonatomic) NSNumber* pinAlwaysRequired;

@end
