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


#import "OAIInstoreMerchantTransactionsTransactionIdRefundDataSubTransactions.h"
@protocol OAIInstoreMerchantTransactionsTransactionIdRefundDataSubTransactions;
@class OAIInstoreMerchantTransactionsTransactionIdRefundDataSubTransactions;



@protocol OAIInstoreMerchantTransactionsTransactionIdRefundData
@end

@interface OAIInstoreMerchantTransactionsTransactionIdRefundData : OAIObject

/* The reason for the refund, or other message logged with the transaction 
 */
@property(nonatomic) NSString* reason;
/* An optional client reference to be associated with the transaction.  If not suplied the transactionId will be used. [optional]
 */
@property(nonatomic) NSString* clientReference;
/* List of payments and amounts to refund. Can be used to refund to multiple payment instruments or to issue partial refunds. If subTransactions is not supplied the entire transaction will be refunded. [optional]
 */
@property(nonatomic) NSArray<OAIInstoreMerchantTransactionsTransactionIdRefundDataSubTransactions>* subTransactions;

@end
