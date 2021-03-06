#import "OAIInstoreMerchantPaymentSessionData.h"

@implementation OAIInstoreMerchantPaymentSessionData

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.generateQR = @(NO);
    self.timeToLivePaymentSession = @0;
    self.timeToLiveQR = @0;
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"location": @"location", @"merchantInfo": @"merchantInfo", @"generateQR": @"generateQR", @"timeToLivePaymentSession": @"timeToLivePaymentSession", @"timeToLiveQR": @"timeToLiveQR", @"paymentRequestId": @"paymentRequestId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"generateQR", @"timeToLivePaymentSession", @"timeToLiveQR", @"paymentRequestId"];
  return [optionalProperties containsObject:propertyName];
}

@end
