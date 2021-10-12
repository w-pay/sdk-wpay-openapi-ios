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



@protocol OAIInstoreMerchantPaymentSessionData
@end

@interface OAIInstoreMerchantPaymentSessionData : OAIObject

/* The location of the payment session (Used to group payment sessions) 
 */
@property(nonatomic) NSString* location;

@property(nonatomic) OAIDynamicPayload* merchantInfo;
/* Flag indicating whether a QR code should be created and returned in the response [optional]
 */
@property(nonatomic) NSNumber* generateQR;
/* The time in seconds that the payment request should remain valid.  After this time any use of the request to create a payment will fail. Default value is 0 which indicates that the code will not expire until it is deleted [optional]
 */
@property(nonatomic) NSNumber* timeToLivePaymentSession;
/* The time in seconds that the QR code should remain valid.  After this time any use of the request to create a payment will fail. Default value is 0 which indicates that the code will not expire until it is deleted [optional]
 */
@property(nonatomic) NSNumber* timeToLiveQR;
/* The ID of the associated payment request [optional]
 */
@property(nonatomic) NSString* paymentRequestId;

@end
