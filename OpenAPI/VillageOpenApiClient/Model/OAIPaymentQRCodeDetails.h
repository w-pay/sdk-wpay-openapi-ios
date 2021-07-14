#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Wpay APIs
* Wpay APIs for payments and gifting
*
* The version of the OpenAPI document: 1.0.5
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAIInstoreMerchantQrData.h"
#import "OAIMeta.h"
@protocol OAIInstoreMerchantQrData;
@class OAIInstoreMerchantQrData;
@protocol OAIMeta;
@class OAIMeta;



@protocol OAIPaymentQRCodeDetails
@end

@interface OAIPaymentQRCodeDetails : OAIObject


@property(nonatomic) OAIInstoreMerchantQrData* data;

@property(nonatomic) OAIMeta* meta;

@end
