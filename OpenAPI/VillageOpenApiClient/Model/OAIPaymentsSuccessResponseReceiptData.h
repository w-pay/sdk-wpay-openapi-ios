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





@protocol OAIPaymentsSuccessResponseReceiptData
@end

@interface OAIPaymentsSuccessResponseReceiptData : OAIObject

/* The suffix (last 4 digits) of the credit card number used in the WebPay transaction. 
 */
@property(nonatomic) NSString* cardSuffix;
/* The credit card scheme. 
 */
@property(nonatomic) NSString* scheme;
/* The month of the expiry date of the credit card. 
 */
@property(nonatomic) NSString* expiryMonth;
/* The year of the expiry date of the credit card. 
 */
@property(nonatomic) NSString* expiryYear;

@end
