#import "OAIGiftingProductOrderRequestDataBillingContact.h"

@implementation OAIGiftingProductOrderRequestDataBillingContact

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"firstName": @"firstName", @"lastName": @"lastName", @"email": @"email", @"mobileNumber": @"mobileNumber", @"streetAddress": @"streetAddress", @"extendedAddress": @"extendedAddress", @"suburb": @"suburb", @"stateOrTerritory": @"stateOrTerritory", @"postalCode": @"postalCode", @"countryCode": @"countryCode" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"extendedAddress", ];
  return [optionalProperties containsObject:propertyName];
}

@end
