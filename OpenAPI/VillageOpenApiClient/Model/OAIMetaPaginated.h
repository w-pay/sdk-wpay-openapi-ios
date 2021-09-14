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





@protocol OAIMetaPaginated
@end

@interface OAIMetaPaginated : OAIObject

/* The number of records returned in the result set 
 */
@property(nonatomic) NSNumber* recordCount;
/* The number of records in total in the full query set 
 */
@property(nonatomic) NSNumber* totalRecords;

@end
