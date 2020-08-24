#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Village Wallet
* APIs for Village Wallet
*
* The version of the OpenAPI document: 0.0.6
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol OAIMerchantQrData
@end

@interface OAIMerchantQrData : OAIObject

/* The ID of the payment request linked to this QR code 
 */
@property(nonatomic) NSString* referenceId;
/* The type of ID held in referenceId 
 */
@property(nonatomic) NSString* referenceType;
/* The time in seconds that the QR code should remain valid.  After this time any use of the QR code by a customer will fail to return any data. Default value is 0 which indicates that the code will not expire until it is deleted [optional]
 */
@property(nonatomic) NSNumber* timeToLive;

@end
