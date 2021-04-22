#import "OAIVerifyPaymentInstrumentsErrorResponseVerifyResponses.h"

@implementation OAIVerifyPaymentInstrumentsErrorResponseVerifyResponses

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"paymentToken": @"paymentToken", @"errorCode": @"errorCode", @"errorMessage": @"errorMessage", @"errorDetail": @"errorDetail", @"stepUp": @"stepUp", @"externalServiceCode": @"externalServiceCode", @"externalServiceMessage": @"externalServiceMessage" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"stepUp", @"externalServiceCode", @"externalServiceMessage"];
  return [optionalProperties containsObject:propertyName];
}

@end
