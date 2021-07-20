#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Wpay APIs
* Wpay APIs for payments and gifting
*
* The version of the OpenAPI document: 1.0.5
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol OAIListPaymentInstrumentsRequest
@end

@interface OAIListPaymentInstrumentsRequest : OAIObject

/* The IDM (Gigya) UID or merchant shopper id of the user. Do NOT use an email address! 
 */
@property(nonatomic) NSString* uid;
/* The merchant shopper id of the user. 
 */
@property(nonatomic) NSString* shopperId;

@end
