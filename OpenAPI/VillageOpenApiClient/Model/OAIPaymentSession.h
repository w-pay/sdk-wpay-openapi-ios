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


#import "OAIDynamicPayload.h"
@protocol OAIDynamicPayload;
@class OAIDynamicPayload;



@protocol OAIPaymentSession
@end

@interface OAIPaymentSession : OAIObject

/* The ID of the payment session 
 */
@property(nonatomic) NSString* paymentSessionId;
/* The ID of the associated payment request [optional]
 */
@property(nonatomic) NSString* paymentRequestId;
/* The ID of the merchant initiating the payment session 
 */
@property(nonatomic) NSString* merchantId;
/* The ID of the customers wallet [optional]
 */
@property(nonatomic) NSString* walletId;
/* The ISO date/time for when the payment session will expire and become unusable 
 */
@property(nonatomic) NSDate* expiryTime;
/* The location of the payment session (Used to group payment sessions) 
 */
@property(nonatomic) NSString* location;

@property(nonatomic) OAIDynamicPayload* merchantInfo;

@property(nonatomic) OAIDynamicPayload* customerInfo;

@end
