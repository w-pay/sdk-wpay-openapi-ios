#import "OAIPaymentSession.h"

@implementation OAIPaymentSession

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"paymentSessionId": @"paymentSessionId", @"paymentRequestId": @"paymentRequestId", @"merchantId": @"merchantId", @"walletId": @"walletId", @"expiryTime": @"expiryTime", @"location": @"location", @"merchantInfo": @"merchantInfo", @"customerInfo": @"customerInfo" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"paymentRequestId", @"walletId", @"customerInfo"];
  return [optionalProperties containsObject:propertyName];
}

@end
