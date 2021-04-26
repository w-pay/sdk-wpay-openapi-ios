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





@protocol OAIOpenpayVoidsRequestVoids
@end

@interface OAIOpenpayVoidsRequestVoids : OAIObject

/* Container reference in the transaction logs. This number uniquely identifies the payment transaction in the container. 
 */
@property(nonatomic) NSString* paymentTransactionRef;

@end