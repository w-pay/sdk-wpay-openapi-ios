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


#import "OAIBillingAddress.h"
#import "OAIPaymentAgreement.h"
@protocol OAIBillingAddress;
@class OAIBillingAddress;
@protocol OAIPaymentAgreement;
@class OAIPaymentAgreement;



@protocol OAIInstoreCustomerPaymentsAgreementsPaymentTokenData
@end

@interface OAIInstoreCustomerPaymentsAgreementsPaymentTokenData : OAIObject

/* A merchant application specific reference number for the transaction. 
 */
@property(nonatomic) NSString* clientReference;
/* A merchant application specific reference number for the customer. [optional]
 */
@property(nonatomic) NSString* customerRef;
/* Merchant order number of the transaction. [optional]
 */
@property(nonatomic) NSString* orderNumber;
/* Description of the payment agreement. Used to distinguish payment agreements from one another. [optional]
 */
@property(nonatomic) NSString* _description;

@property(nonatomic) OAIBillingAddress* billingAddress;

@property(nonatomic) OAIPaymentAgreement* paymentAgreement;

@end