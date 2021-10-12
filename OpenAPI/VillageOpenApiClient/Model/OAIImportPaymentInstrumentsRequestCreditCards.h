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





@protocol OAIImportPaymentInstrumentsRequestCreditCards
@end

@interface OAIImportPaymentInstrumentsRequestCreditCards : OAIObject

/* WebPay reference in the transaction logs. This number uniquely identifies the transaction in WebPay. 
 */
@property(nonatomic) NSString* transactionRef;
/* The WebPay transaction timestamp. The timestamp format is ISO8601. 
 */
@property(nonatomic) NSString* transactionTimestamp;
/* The merchant order number used in the WebPay transaction. 
 */
@property(nonatomic) NSString* orderNumber;
/* The bin (first 6 digits) of the credit card number used in the WebPay transaction. 
 */
@property(nonatomic) NSString* bin;
/* The suffix (last 4 digits) of the credit card number used in the WebPay transaction. 
 */
@property(nonatomic) NSString* cardSuffix;
/* The amount of the WebPay transaction. 
 */
@property(nonatomic) NSNumber* amount;

@end
