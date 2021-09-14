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


#import "OAIOpenpayPaymentsSuccessResponsePaymentResponses.h"
@protocol OAIOpenpayPaymentsSuccessResponsePaymentResponses;
@class OAIOpenpayPaymentsSuccessResponsePaymentResponses;



@protocol OAIOpenpayPaymentsSuccessResponse
@end

@interface OAIOpenpayPaymentsSuccessResponse : OAIObject

/* Container reference in the transaction logs. This number uniquely identifies the whole/grouped transaction in the container. 
 */
@property(nonatomic) NSString* transactionReceipt;

@property(nonatomic) NSArray<OAIOpenpayPaymentsSuccessResponsePaymentResponses>* paymentResponses;

@end
