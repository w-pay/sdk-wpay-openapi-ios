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





@protocol OAIInstoreMerchantTransactionsTransactionIdRefundDataSubTransactions
@end

@interface OAIInstoreMerchantTransactionsTransactionIdRefundDataSubTransactions : OAIObject

/* The payment reference for this sub transaction. 
 */
@property(nonatomic) NSString* subTransactionRef;
/* The amount to be refunded as part of this transaction. 
 */
@property(nonatomic) NSNumber* amount;

@end
