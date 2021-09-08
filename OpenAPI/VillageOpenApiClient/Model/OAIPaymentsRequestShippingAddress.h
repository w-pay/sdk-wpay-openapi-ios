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





@protocol OAIPaymentsRequestShippingAddress
@end

@interface OAIPaymentsRequestShippingAddress : OAIObject

/* The recipient's first name. 
 */
@property(nonatomic) NSString* firstName;
/* The recipient's last name. 
 */
@property(nonatomic) NSString* lastName;
/* The recipient’s email address. [optional]
 */
@property(nonatomic) NSString* email;
/* The recipient's company name. [optional]
 */
@property(nonatomic) NSString* company;
/* The recipient's extended address line. [optional]
 */
@property(nonatomic) NSString* extendedAddress;
/* The recipient's street address line. 
 */
@property(nonatomic) NSString* streetAddress;
/* The recipient's suburb. 
 */
@property(nonatomic) NSString* suburb;
/* The recipient's abbreviated state or territory. 
 */
@property(nonatomic) NSString* stateOrTerritory;
/* The recipient's postal code 
 */
@property(nonatomic) NSString* postalCode;
/* The recipient's Alpha-2 (2-character) ISO-3166-1 country code. 
 */
@property(nonatomic) NSString* countryCode;

@end
