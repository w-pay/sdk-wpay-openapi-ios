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


#import "OAICustomerPaymentDetailsDataSecondaryInstruments.h"
#import "OAIPaymentTransactionType.h"
#import "OAIPreferencePayments.h"
@protocol OAICustomerPaymentDetailsDataSecondaryInstruments;
@class OAICustomerPaymentDetailsDataSecondaryInstruments;
@protocol OAIPaymentTransactionType;
@class OAIPaymentTransactionType;
@protocol OAIPreferencePayments;
@class OAIPreferencePayments;



@protocol OAICustomerPaymentDetailsData
@end

@interface OAICustomerPaymentDetailsData : OAIObject

/* The Id of the primary instrument.  Will be used as the balance of the transaction.  If not present then the primary instrument from the customer preferences will be used. [optional]
 */
@property(nonatomic) NSString* primaryInstrumentId;
/* The secondary instruments (if any) used to partially make the payment.  If not present then the primary instrument from the customer preferences will be used.  To specify that no secondary instruments should be used an empty array should be provided. [optional]
 */
@property(nonatomic) NSArray<OAICustomerPaymentDetailsDataSecondaryInstruments>* secondaryInstruments;
/* An optional flag allowing the consumer to indicate that automatic rollback step should be skipped in the case of failure [optional]
 */
@property(nonatomic) NSNumber* skipRollback;
/* An optional flag allowing the consumer to indicate that a partial success will not trigger a failure and rollback [optional]
 */
@property(nonatomic) NSNumber* allowPartialSuccess;
/* An optional client reference to be associated with the transaction.  If not suplied the transactionId will be used. [optional]
 */
@property(nonatomic) NSString* clientReference;

@property(nonatomic) OAIPreferencePayments* preferences;

@property(nonatomic) OAIPaymentTransactionType* transactionType;

@end
