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


#import "OAIInstoreMerchantTransactionsTransactionIdRefundData.h"
#import "OAIMeta.h"
@protocol OAIInstoreMerchantTransactionsTransactionIdRefundData;
@class OAIInstoreMerchantTransactionsTransactionIdRefundData;
@protocol OAIMeta;
@class OAIMeta;



@protocol OAIRefundMerchantTransactionRequest
@end

@interface OAIRefundMerchantTransactionRequest : OAIObject


@property(nonatomic) OAIInstoreMerchantTransactionsTransactionIdRefundData* data;

@property(nonatomic) OAIMeta* meta;

@end
