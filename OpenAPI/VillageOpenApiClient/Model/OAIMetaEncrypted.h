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





@protocol OAIMetaEncrypted
@end

@interface OAIMetaEncrypted : OAIObject

/* An encrypted JSON object containing sensitive data [optional]
 */
@property(nonatomic) NSString* cipherText;

@end
