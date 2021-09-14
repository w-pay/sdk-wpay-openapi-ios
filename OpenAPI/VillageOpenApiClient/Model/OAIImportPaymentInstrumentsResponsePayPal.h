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





@protocol OAIImportPaymentInstrumentsResponsePayPal
@end

@interface OAIImportPaymentInstrumentsResponsePayPal : OAIObject

/* The Paypal customer id. 
 */
@property(nonatomic) NSString* customerId;
/* The Paypal email id. [optional]
 */
@property(nonatomic) NSString* payPalId;
/* The Paypal payment method token. [optional]
 */
@property(nonatomic) NSString* paymentMethodToken;
/* The import process result for the paypal instrument. 
 */
@property(nonatomic) NSString* result;
/* The import process error message if \"result\" is \"ERROR\". Will be null if \"result\" is not \"ERROR\". 
 */
@property(nonatomic) NSObject* errorMessage;

@end
