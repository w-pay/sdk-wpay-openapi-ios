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





@protocol OAIPaymentsRequestTransactionTypeApplePay
@end

@interface OAIPaymentsRequestTransactionTypeApplePay : OAIObject

/* The container transaction type to use for apple pay credit card instruments. 
 */
@property(nonatomic) NSString* creditCard;
/* The container transaction type to use for apple pay debit card instruments. Only PURCHASE is currently supported for apple pay debit card instruments. 
 */
@property(nonatomic) NSString* debitCard;

@end
