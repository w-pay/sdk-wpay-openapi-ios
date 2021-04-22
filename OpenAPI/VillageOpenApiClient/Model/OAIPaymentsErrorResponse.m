#import "OAIPaymentsErrorResponse.h"

@implementation OAIPaymentsErrorResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"httpStatusCode": @"httpStatusCode", @"errorCode": @"errorCode", @"errorMessage": @"errorMessage", @"errorDetail": @"errorDetail", @"creditCards": @"creditCards", @"giftCards": @"giftCards", @"payPal": @"payPal", @"androidPay": @"androidPay", @"googlePay": @"googlePay", @"applePay": @"applePay", @"unknown": @"unknown" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"creditCards", @"giftCards", @"payPal", @"androidPay", @"googlePay", @"applePay", @"unknown"];
  return [optionalProperties containsObject:propertyName];
}

@end
