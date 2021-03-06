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





@protocol OAICustomerPaymentDetailsDataSecondaryInstruments
@end

@interface OAICustomerPaymentDetailsDataSecondaryInstruments : OAIObject

/* The ID of the payment instrument 
 */
@property(nonatomic) NSString* instrumentId;
/* The amount to charged against this instrument.  Must be greater than zero 
 */
@property(nonatomic) NSNumber* amount;

@end
