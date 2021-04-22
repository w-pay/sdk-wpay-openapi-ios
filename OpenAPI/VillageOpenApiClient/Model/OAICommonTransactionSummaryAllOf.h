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


#import "OAIInstrumentAllocation.h"
@protocol OAIInstrumentAllocation;
@class OAIInstrumentAllocation;



@protocol OAICommonTransactionSummaryAllOf
@end

@interface OAICommonTransactionSummaryAllOf : OAIObject

/* The ID of the transaction 
 */
@property(nonatomic) NSString* transactionId;
/* An optional client reference associated with the transaction.  If not supplied the transactionId will be used. [optional]
 */
@property(nonatomic) NSString* clientReference;
/* The type of transaction: PAYMENT or REFUND 
 */
@property(nonatomic) NSString* type;
/* Date/time stamp of when the transaction occurred in ISO string format 
 */
@property(nonatomic) NSDate* executionTime;
/* The current status of the transactions 
 */
@property(nonatomic) NSString* status;
/* The rollback state of this transaction [optional]
 */
@property(nonatomic) NSString* rollback;
/* Array of transaction responses returned by downstream processes [optional]
 */
@property(nonatomic) NSArray<NSObject*>* subTransactions;
/* The reason provided for the refund.  Only provided for REFUND transactions [optional]
 */
@property(nonatomic) NSString* refundReason;
/* The instruments used to make the payment.  For refunds and cash back amounts will be negative 
 */
@property(nonatomic) NSArray<OAIInstrumentAllocation>* instruments;

@end
