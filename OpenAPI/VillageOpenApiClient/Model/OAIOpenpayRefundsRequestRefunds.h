#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Wpay APIs
* Wpay APIs for payments and gifting
*
* The version of the OpenAPI document: 1.0.6
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol OAIOpenpayRefundsRequestRefunds
@end

@interface OAIOpenpayRefundsRequestRefunds : OAIObject

/* Container reference in the transaction logs. This number uniquely identifies the payment transaction in the container. 
 */
@property(nonatomic) NSString* paymentTransactionRef;
/* The amount you want to refund. 
 */
@property(nonatomic) NSNumber* amount;
/* The GST amount of the amount you want to refund. [optional]
 */
@property(nonatomic) NSNumber* gstAmount;
/* The reason or justification for the refund. [optional]
 */
@property(nonatomic) NSString* reason;

@end
