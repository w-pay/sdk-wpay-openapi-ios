#import "OAIPreferencePaymentsSecondaryInstruments.h"

@implementation OAIPreferencePaymentsSecondaryInstruments

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.enableSecondaryInstruments = @(YES);
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"enableSecondaryInstruments": @"enableSecondaryInstruments", @"order": @"order", @"exclude": @"exclude", @"include": @"include" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"enableSecondaryInstruments", @"order", @"exclude", @"include"];
  return [optionalProperties containsObject:propertyName];
}

@end
