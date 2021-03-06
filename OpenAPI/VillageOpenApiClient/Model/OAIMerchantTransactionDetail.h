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


#import "OAIBasket.h"
#import "OAIInstrumentAllocation.h"
#import "OAIMerchantPayload.h"
#import "OAIMerchantPaymentDetailsAllOf.h"
#import "OAIMerchantTransactionSummary.h"
#import "OAIPosPayload.h"
@protocol OAIBasket;
@class OAIBasket;
@protocol OAIInstrumentAllocation;
@class OAIInstrumentAllocation;
@protocol OAIMerchantPayload;
@class OAIMerchantPayload;
@protocol OAIMerchantPaymentDetailsAllOf;
@class OAIMerchantPaymentDetailsAllOf;
@protocol OAIMerchantTransactionSummary;
@class OAIMerchantTransactionSummary;
@protocol OAIPosPayload;
@class OAIPosPayload;



@protocol OAIMerchantTransactionDetail
@end

@interface OAIMerchantTransactionDetail : OAIObject

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
/* The ID of this payment request 
 */
@property(nonatomic) NSString* paymentRequestId;
/* The unique reference for the payment as defined by the Merchant 
 */
@property(nonatomic) NSString* merchantReferenceId;
/* The gross amount to be paid.  Must be positive except for refunds 
 */
@property(nonatomic) NSNumber* grossAmount;
/* The ID of the wallet associated with this transaction 
 */
@property(nonatomic) NSString* walletId;

@property(nonatomic) OAIBasket* basket;

@property(nonatomic) OAIPosPayload* posPayload;

@property(nonatomic) OAIMerchantPayload* merchantPayload;

@end
