#import "OAIMerchantProfileResponseAllowedPaymentMethods.h"

@implementation OAIMerchantProfileResponseAllowedPaymentMethods

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"giftCard": @"giftCard", @"creditCard": @"creditCard", @"payPal": @"payPal", @"googlePay": @"googlePay", @"applePay": @"applePay", @"paymentAgreement": @"paymentAgreement" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"giftCard", @"creditCard", @"payPal", @"googlePay", @"applePay", @"paymentAgreement"];
  return [optionalProperties containsObject:propertyName];
}

@end
