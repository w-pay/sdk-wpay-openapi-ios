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





@protocol OAITransactionHistoryResponseTransactions
@end

@interface OAITransactionHistoryResponseTransactions : OAIObject

/* The container transaction type. 
 */
@property(nonatomic) NSString* transactionType;
/* Container reference in the transaction logs. This number uniquely identifies the transaction in the container. 
 */
@property(nonatomic) NSString* transactionRef;
/* The container transaction timestamp. The timestamp format is ISO8601. 
 */
@property(nonatomic) NSString* transactionTimestamp;
/* A merchant application specific reference number. This number should uniquely identify the transaction in the merchant’s system. The current implementation assigns the \"clientReference\" value to this property. 
 */
@property(nonatomic) NSString* applicationRef;
/* The container application name of the merchant. 
 */
@property(nonatomic) NSString* applicationName;
/* A merchant application specific reference number. This number should uniquely identify the transaction in the merchant’s system. 
 */
@property(nonatomic) NSString* clientReference;
/* The merchant order number of the transaction. 
 */
@property(nonatomic) NSString* orderNumber;
/* The bin (first 4 digits) of the card number used in the transaction. Will be null for transactions where bin is not applicable. 
 */
@property(nonatomic) NSString* bin;
/* The type of payment instrument used in the transaction. For credit card transactions this property will contain the scheme. 
 */
@property(nonatomic) NSString* network;
/* The suffix (last 4 digits) of the card number used in the transaction. Will be null for transactions where suffix is not applicable. 
 */
@property(nonatomic) NSString* cardSuffix;
/* The amount of the transaction. 
 */
@property(nonatomic) NSNumber* amount;
/* The comment set in the tokenization request of Google/Apple Pay instruments. Will be null for transactions where comment is not applicable. 
 */
@property(nonatomic) NSString* comment;
/* The type of the payment instrument used in the transaction. 
 */
@property(nonatomic) NSString* paymentInstrumentType;

@end