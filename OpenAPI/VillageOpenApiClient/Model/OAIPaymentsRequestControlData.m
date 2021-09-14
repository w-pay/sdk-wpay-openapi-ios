#import "OAIPaymentsRequestControlData.h"

@implementation OAIPaymentsRequestControlData

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.tokenType = @"PAN";
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"tokenType": @"tokenType" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"tokenType"];
  return [optionalProperties containsObject:propertyName];
}

@end
