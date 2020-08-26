#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Village Wallet
* APIs for Village Wallet
*
* The version of the OpenAPI document: 0.0.6
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol OAICommonTransactionSummaryAllOf
@end

@interface OAICommonTransactionSummaryAllOf : OAIObject

/* The ID of the transaction 
 */
@property(nonatomic) NSString* transactionId;
/* An optional client reference associated with the transaction.  If not suplied the transactionId will be used. [optional]
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
/* The error detail returned by downstream processes when the payment is REJECTED [optional]
 */
@property(nonatomic) NSObject* statusDetail;
/* The reason provided for the refund.  Only provided for REFUND transactions [optional]
 */
@property(nonatomic) NSString* refundReason;

@end
