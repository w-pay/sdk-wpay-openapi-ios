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





@protocol OAICustomerTermsAndConditionsAcceptance
@end

@interface OAICustomerTermsAndConditionsAcceptance : OAIObject

/* The type of the Ts and Cs. 
 */
@property(nonatomic) NSString* type;
/* The version of the Ts and Cs. 
 */
@property(nonatomic) NSString* version;
/* The timestamp when the shopper/customer agreed to the Everyday Pay Ts and Cs.  The timestamp format is milliseconds since epoch. 
 */
@property(nonatomic) NSNumber* timestamp;

@end
