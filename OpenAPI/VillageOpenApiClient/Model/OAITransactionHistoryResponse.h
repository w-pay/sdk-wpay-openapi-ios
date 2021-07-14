#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Wpay APIs
* Wpay APIs for payments and gifting
*
* The version of the OpenAPI document: 1.0.5
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAITransactionHistoryResponseTransactions.h"
@protocol OAITransactionHistoryResponseTransactions;
@class OAITransactionHistoryResponseTransactions;



@protocol OAITransactionHistoryResponse
@end

@interface OAITransactionHistoryResponse : OAIObject

/* The number of transactions returned in the results. 
 */
@property(nonatomic) NSNumber* returned;
/* The total number of transactions available in the container. 
 */
@property(nonatomic) NSNumber* total;

@property(nonatomic) NSArray<OAITransactionHistoryResponseTransactions>* transactions;

@end
