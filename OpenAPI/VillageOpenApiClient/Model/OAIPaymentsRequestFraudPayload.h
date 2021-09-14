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





@protocol OAIPaymentsRequestFraudPayload
@end

@interface OAIPaymentsRequestFraudPayload : OAIObject

/* The fraud check provider. 
 */
@property(nonatomic) NSString* provider;
/* The fraud check version. 
 */
@property(nonatomic) NSString* version;
/* The fraud check message format. 
 */
@property(nonatomic) NSString* format;
/* The fraud check response message format. 
 */
@property(nonatomic) NSString* responseFormat;
/* The fraud check message. 
 */
@property(nonatomic) NSString* message;

@end
