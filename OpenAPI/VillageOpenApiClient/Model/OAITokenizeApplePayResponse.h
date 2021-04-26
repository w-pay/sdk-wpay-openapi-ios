#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Wpay APIs
* Wpay APIs for payments and gifting
*
* The version of the OpenAPI document: 1.0.3
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol OAITokenizeApplePayResponse
@end

@interface OAITokenizeApplePayResponse : OAIObject

/* The new payment instrument id to be used for payments. 
 */
@property(nonatomic) NSString* paymentInstrumentId;
/* The step-up token to be used for payments. 
 */
@property(nonatomic) NSString* stepUpToken;

@end