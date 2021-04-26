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





@protocol OAITokenizeApplePayRequest
@end

@interface OAITokenizeApplePayRequest : OAIObject

/* The \"data\" value from the Apple Pay wallet. 
 */
@property(nonatomic) NSString* data;
/* The \"ephemeralPublicKey\" value from the Apple Pay wallet. 
 */
@property(nonatomic) NSString* ephemeralPublicKey;
/* The \"publicKeyHash\" value from the Apple Pay wallet. 
 */
@property(nonatomic) NSString* publicKeyHash;
/* The \"transactionId\" value from the Apple Pay wallet. 
 */
@property(nonatomic) NSString* transactionId;
/* The \"signature\" value from the Apple Pay wallet. 
 */
@property(nonatomic) NSString* signature;
/* The \"version\" value from the Apple Pay wallet. 
 */
@property(nonatomic) NSString* version;
/* The type/schema value from the Apple Pay wallet. 
 */
@property(nonatomic) NSString* instrumentType;
/* A flag to indicate if this payment instrument has to be set as the primary instrument. 
 */
@property(nonatomic) NSNumber* primary;
/* The display text returned by the Apple Pay wallet. 
 */
@property(nonatomic) NSString* comment;
/* The \"applicationData\" value from the Apple Pay wallet. 
 */
@property(nonatomic) NSString* applicationData;

@end