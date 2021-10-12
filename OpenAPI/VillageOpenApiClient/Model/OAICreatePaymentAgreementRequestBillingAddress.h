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





@protocol OAICreatePaymentAgreementRequestBillingAddress
@end

@interface OAICreatePaymentAgreementRequestBillingAddress : OAIObject

/* The customer's first name. 
 */
@property(nonatomic) NSString* firstName;
/* The customer's last name. 
 */
@property(nonatomic) NSString* lastName;
/* The customer’s email address. [optional]
 */
@property(nonatomic) NSString* email;
/* The customer's company name. [optional]
 */
@property(nonatomic) NSString* company;
/* The customer's extended address line. [optional]
 */
@property(nonatomic) NSString* extendedAddress;
/* The customer's street address line. 
 */
@property(nonatomic) NSString* streetAddress;
/* The customer's suburb. 
 */
@property(nonatomic) NSString* suburb;
/* The customer's abbreviated state or territory. 
 */
@property(nonatomic) NSString* stateOrTerritory;
/* The customer's postal code. 
 */
@property(nonatomic) NSString* postalCode;
/* The customer's Alpha-2 (2-character) ISO-3166-1 country code. 
 */
@property(nonatomic) NSString* countryCode;

@end
