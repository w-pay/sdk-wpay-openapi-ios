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





@protocol OAITokenizeGooglePayResponse
@end

@interface OAITokenizeGooglePayResponse : OAIObject

/* The new payment token to be used for payments. The payment token is a unique identifier for the payment instrument. 
 */
@property(nonatomic) NSString* paymentToken;

@end
