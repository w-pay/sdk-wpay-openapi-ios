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


#import "OAIPaymentsErrorResponseApplePay.h"
#import "OAIPaymentsErrorResponseCreditCards.h"
#import "OAIPaymentsErrorResponseGiftCards.h"
#import "OAIPaymentsErrorResponseGooglePay.h"
#import "OAIPaymentsErrorResponsePayPal.h"
#import "OAIPaymentsSuccessResponseUnknown.h"
@protocol OAIPaymentsErrorResponseApplePay;
@class OAIPaymentsErrorResponseApplePay;
@protocol OAIPaymentsErrorResponseCreditCards;
@class OAIPaymentsErrorResponseCreditCards;
@protocol OAIPaymentsErrorResponseGiftCards;
@class OAIPaymentsErrorResponseGiftCards;
@protocol OAIPaymentsErrorResponseGooglePay;
@class OAIPaymentsErrorResponseGooglePay;
@protocol OAIPaymentsErrorResponsePayPal;
@class OAIPaymentsErrorResponsePayPal;
@protocol OAIPaymentsSuccessResponseUnknown;
@class OAIPaymentsSuccessResponseUnknown;



@protocol OAIPaymentsErrorResponse
@end

@interface OAIPaymentsErrorResponse : OAIObject

/* The http status code (4xx and 5xx HTTP status codes). 
 */
@property(nonatomic) NSNumber* httpStatusCode;
/* The error code. 
 */
@property(nonatomic) NSString* errorCode;
/* The error message. 
 */
@property(nonatomic) NSString* errorMessage;
/* The error detail. 
 */
@property(nonatomic) NSString* errorDetail;

@property(nonatomic) NSArray<OAIPaymentsErrorResponseCreditCards>* creditCards;

@property(nonatomic) NSArray<OAIPaymentsErrorResponseGiftCards>* giftCards;

@property(nonatomic) NSArray<OAIPaymentsErrorResponsePayPal>* payPal;
/* Android Pay has been replaced by Google Pay. This property has been retained for backward compatibility and will always be an empty array. [optional]
 */
@property(nonatomic) NSArray<NSObject*>* androidPay;

@property(nonatomic) NSArray<OAIPaymentsErrorResponseGooglePay>* googlePay;

@property(nonatomic) NSArray<OAIPaymentsErrorResponseApplePay>* applePay;

@property(nonatomic) NSArray<OAIPaymentsSuccessResponseUnknown>* unknown;

@end
