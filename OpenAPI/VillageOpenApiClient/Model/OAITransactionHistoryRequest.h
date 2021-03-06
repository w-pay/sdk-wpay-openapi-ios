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





@protocol OAITransactionHistoryRequest
@end

@interface OAITransactionHistoryRequest : OAIObject

/* The container transaction types to include in the results. 
 */
@property(nonatomic) NSArray<NSString*>* transactionTypes;
/* The ids of the payment instruments to include in the results. [optional]
 */
@property(nonatomic) NSArray<NSString*>* paymentInstrumentIds;
/* A merchant application specific reference number to include in the results. [optional]
 */
@property(nonatomic) NSString* clientReference;
/* A container reference number to include in the results. [optional]
 */
@property(nonatomic) NSString* transactionRef;
/* A merchant order number to include in the results. [optional]
 */
@property(nonatomic) NSString* orderNumber;
/* Limit transactions included in the results FROM this timestamp. The timestamp format is ISO8601. [optional]
 */
@property(nonatomic) NSString* startDate;
/* Limit transactions included in the results TO this timestamp . The timestamp format is ISO8601. [optional]
 */
@property(nonatomic) NSString* endDate;
/* The max number of transactions to include in the results. [optional]
 */
@property(nonatomic) NSNumber* maxRecords;

@end
