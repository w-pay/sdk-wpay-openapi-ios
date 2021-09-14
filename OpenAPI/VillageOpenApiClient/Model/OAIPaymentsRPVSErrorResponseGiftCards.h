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


#import "OAIPaymentsRPVSErrorResponseBasketData.h"
@protocol OAIPaymentsRPVSErrorResponseBasketData;
@class OAIPaymentsRPVSErrorResponseBasketData;



@protocol OAIPaymentsRPVSErrorResponseGiftCards
@end

@interface OAIPaymentsRPVSErrorResponseGiftCards : OAIObject

/* The gift card payment instrument id. 
 */
@property(nonatomic) NSString* paymentInstrumentId;
/* The gift card payment token. The payment token is a unique identifier for the payment instrument. 
 */
@property(nonatomic) NSString* paymentToken;
/* The error code. 
 */
@property(nonatomic) NSString* errorCode;
/* The error message. 
 */
@property(nonatomic) NSString* errorMessage;
/* The error detail. 
 */
@property(nonatomic) NSString* errorDetail;
/* This array contains the basket items that failed the restricted product validation (RPVS) for relevant payment instrument. 
 */
@property(nonatomic) NSArray<OAIPaymentsRPVSErrorResponseBasketData>* basketData;

@end
