#import "OAICreatePaymentAgreementRequestPaymentAgreement.h"

@implementation OAICreatePaymentAgreementRequestPaymentAgreement

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.immediateCharge = @(NO);
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"type": @"type", @"paymentInstrumentId": @"paymentInstrumentId", @"startDate": @"startDate", @"endDate": @"endDate", @"chargeFrequency": @"chargeFrequency", @"chargeAmount": @"chargeAmount", @"immediateCharge": @"immediateCharge", @"stepUpToken": @"stepUpToken" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"startDate", @"endDate", @"immediateCharge", @"stepUpToken"];
  return [optionalProperties containsObject:propertyName];
}

@end
