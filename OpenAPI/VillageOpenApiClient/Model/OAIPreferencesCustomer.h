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


#import "OAIPreferencePayments.h"
@protocol OAIPreferencePayments;
@class OAIPreferencePayments;



@protocol OAIPreferencesCustomer
@end

@interface OAIPreferencesCustomer : OAIObject


@property(nonatomic) OAIPreferencePayments* payments;
/* A set of groups of key/value based preferences [optional]
 */
@property(nonatomic) NSDictionary<NSString*, NSDictionary<NSString*, NSString*>*>* general;

@end
