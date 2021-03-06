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





@protocol OAIOpenpayPaymentsSuccessResponseExtendedTransactionData
@end

@interface OAIOpenpayPaymentsSuccessResponseExtendedTransactionData : OAIObject

/* The name of the extended transaction data field. 
 */
@property(nonatomic) NSString* field;
/* The value of the extended transaction data field. 
 */
@property(nonatomic) NSString* value;

@end
