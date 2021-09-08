#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Wpay APIs
* Wpay APIs for payments and gifting
*
* The version of the OpenAPI document: 1.0.6
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol OAITokenizeGooglePayRequest
@end

@interface OAITokenizeGooglePayRequest : OAIObject

/* The type/schema value from the Google Pay wallet. 
 */
@property(nonatomic) NSString* instrumentType;
/* The display text returned by the Google Pay wallet. 
 */
@property(nonatomic) NSString* comment;
/* The \"tokenData\" payload from the Google Pay wallet. 
 */
@property(nonatomic) NSString* tokenData;

@end
