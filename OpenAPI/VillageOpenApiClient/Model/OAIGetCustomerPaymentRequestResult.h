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


#import "OAICustomerPaymentRequestDetails.h"
@protocol OAICustomerPaymentRequestDetails;
@class OAICustomerPaymentRequestDetails;



@protocol OAIGetCustomerPaymentRequestResult
@end

@interface OAIGetCustomerPaymentRequestResult : OAIObject


@property(nonatomic) OAICustomerPaymentRequestDetails* data;
/* Object to contain any metadata 
 */
@property(nonatomic) NSDictionary<NSString*, NSObject*>* meta;

@end
