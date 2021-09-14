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


#import "OAIPaymentTransactionType.h"
#import "OAIPaymentsRequestBasketData.h"
#import "OAIPaymentsRequestExtendedMerchantData.h"
#import "OAIPaymentsRequestFraudPayload.h"
#import "OAIPaymentsRequestPayments.h"
#import "OAIPaymentsRequestShippingAddress.h"
#import "OAIPaymentsRequestStoreData.h"
@protocol OAIPaymentTransactionType;
@class OAIPaymentTransactionType;
@protocol OAIPaymentsRequestBasketData;
@class OAIPaymentsRequestBasketData;
@protocol OAIPaymentsRequestExtendedMerchantData;
@class OAIPaymentsRequestExtendedMerchantData;
@protocol OAIPaymentsRequestFraudPayload;
@class OAIPaymentsRequestFraudPayload;
@protocol OAIPaymentsRequestPayments;
@class OAIPaymentsRequestPayments;
@protocol OAIPaymentsRequestShippingAddress;
@class OAIPaymentsRequestShippingAddress;
@protocol OAIPaymentsRequestStoreData;
@class OAIPaymentsRequestStoreData;



@protocol OAIPaymentsRequest
@end

@interface OAIPaymentsRequest : OAIObject


@property(nonatomic) OAIPaymentTransactionType* transactionType;
/* A merchant application specific reference number. This number should uniquely identify the transaction in the merchant’s system. 
 */
@property(nonatomic) NSString* clientReference;
/* The merchant order number of the transaction. 
 */
@property(nonatomic) NSString* orderNumber;

@property(nonatomic) OAIPaymentsRequestShippingAddress* shippingAddress;

@property(nonatomic) NSArray<OAIPaymentsRequestPayments>* payments;
/* This array is only required if the payments request contains paypal instruments. [optional]
 */
@property(nonatomic) NSArray<OAIPaymentsRequestExtendedMerchantData>* extendedMerchantData;

@property(nonatomic) OAIPaymentsRequestStoreData* storeData;
/* This array is only required if an implicit restricted product validation (RPVS) is required during the execution of the payment for the relevant merchant. A merchant can be opted-out of this restricted product validation via configuration. [optional]
 */
@property(nonatomic) NSArray<OAIPaymentsRequestBasketData>* basketData;

@property(nonatomic) OAIPaymentsRequestFraudPayload* fraudPayload;

@end
