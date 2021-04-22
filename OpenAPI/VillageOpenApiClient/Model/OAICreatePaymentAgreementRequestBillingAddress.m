#import "OAICreatePaymentAgreementRequestBillingAddress.h"

@implementation OAICreatePaymentAgreementRequestBillingAddress

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"firstName": @"firstName", @"lastName": @"lastName", @"email": @"email", @"company": @"company", @"extendedAddress": @"extendedAddress", @"streetAddress": @"streetAddress", @"suburb": @"suburb", @"stateOrTerritory": @"stateOrTerritory", @"postalCode": @"postalCode", @"countryCode": @"countryCode" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"email", @"company", @"extendedAddress", ];
  return [optionalProperties containsObject:propertyName];
}

@end
