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


#import "OAIBasket.h"
#import "OAICustomerTransactionDetailAllOf.h"
#import "OAICustomerTransactionSummary.h"
#import "OAICustomerTransactionSummaryAllOfInstruments.h"
@protocol OAIBasket;
@class OAIBasket;
@protocol OAICustomerTransactionDetailAllOf;
@class OAICustomerTransactionDetailAllOf;
@protocol OAICustomerTransactionSummary;
@class OAICustomerTransactionSummary;
@protocol OAICustomerTransactionSummaryAllOfInstruments;
@class OAICustomerTransactionSummaryAllOfInstruments;



@protocol OAICustomerTransactionDetail
@end

@interface OAICustomerTransactionDetail : OAIObject

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
/* The ID of this payment request 
 */
@property(nonatomic) NSString* paymentRequestId;
/* The unique reference for the payment as defined by the Merchant 
 */
@property(nonatomic) NSString* merchantReferenceId;
/* The gross amount to be paid.  Must be positive except for refunds 
 */
@property(nonatomic) NSNumber* grossAmount;
/* The ID of the merchant associated with this transaction 
 */
@property(nonatomic) NSString* merchantId;
/* The instruments used to make the payment.  For refunds and cash back amounts will be negative 
 */
@property(nonatomic) NSArray<OAICustomerTransactionSummaryAllOfInstruments>* instruments;

@property(nonatomic) OAIBasket* basket;

@end
