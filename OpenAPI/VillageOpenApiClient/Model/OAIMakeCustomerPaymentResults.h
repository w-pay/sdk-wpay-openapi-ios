#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Wpay APIs
* Wpay APIs for payments and gifting
*
* The version of the OpenAPI document: 1.0.6
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAICustomerTransactionSummary.h"
#import "OAIMeta.h"
@protocol OAICustomerTransactionSummary;
@class OAICustomerTransactionSummary;
@protocol OAIMeta;
@class OAIMeta;



@protocol OAIMakeCustomerPaymentResults
@end

@interface OAIMakeCustomerPaymentResults : OAIObject


@property(nonatomic) OAICustomerTransactionSummary* data;

@property(nonatomic) OAIMeta* meta;

@end
