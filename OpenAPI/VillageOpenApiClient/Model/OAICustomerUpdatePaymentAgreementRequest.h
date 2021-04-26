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


#import "OAIInstoreCustomerPaymentsAgreementsPaymentTokenData.h"
@protocol OAIInstoreCustomerPaymentsAgreementsPaymentTokenData;
@class OAIInstoreCustomerPaymentsAgreementsPaymentTokenData;



@protocol OAICustomerUpdatePaymentAgreementRequest
@end

@interface OAICustomerUpdatePaymentAgreementRequest : OAIObject


@property(nonatomic) OAIInstoreCustomerPaymentsAgreementsPaymentTokenData* data;
/* Object to contain any metadata 
 */
@property(nonatomic) NSDictionary<NSString*, NSObject*>* meta;

@end