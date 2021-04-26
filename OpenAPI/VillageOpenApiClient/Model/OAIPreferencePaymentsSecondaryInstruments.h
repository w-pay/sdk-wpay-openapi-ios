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





@protocol OAIPreferencePaymentsSecondaryInstruments
@end

@interface OAIPreferencePaymentsSecondaryInstruments : OAIObject

/* Flag indicating whether secondary instruments are enabled or disabled.  If not present defaults to enabled.  Used to specifically disable secondary instruments without losing customer configure preferences. [optional]
 */
@property(nonatomic) NSNumber* enableSecondaryInstruments;
/* The order that the secondary instruments will be used for a specific payment. [optional]
 */
@property(nonatomic) NSString* order;
/* Array of instruments to exclude from the secondary instruments set.  Indicates that the set of secondary instruments should include all valid instruments excluding those in this list. [optional]
 */
@property(nonatomic) NSArray<NSString*>* exclude;
/* Array of instruments to specifically include in the secondary instruments set.  Indicates that the set of secondary instruments should start as empty and only include all valid instruments excluding those in this list. [optional]
 */
@property(nonatomic) NSArray<NSString*>* include;

@end