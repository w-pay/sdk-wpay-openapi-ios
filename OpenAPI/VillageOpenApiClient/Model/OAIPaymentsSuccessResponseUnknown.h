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





@protocol OAIPaymentsSuccessResponseUnknown
@end

@interface OAIPaymentsSuccessResponseUnknown : OAIObject

/* The unknown payment instrument id. 
 */
@property(nonatomic) NSString* paymentInstrumentId;
/* The payment token. The payment token is a unique identifier for the payment instrument. Will be null if the payment instrument is not valid. 
 */
@property(nonatomic) NSString* paymentToken;
/* The error code. Only present if an error occurred during payment. 
 */
@property(nonatomic) NSString* errorCode;
/* The error message. Only present if an error occurred during payment. 
 */
@property(nonatomic) NSString* errorMessage;
/* The error detail. Only present if an error occurred during payment. 
 */
@property(nonatomic) NSString* errorDetail;

@end
