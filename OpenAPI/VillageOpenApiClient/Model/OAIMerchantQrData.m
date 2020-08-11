#import "OAIMerchantQrData.h"

@implementation OAIMerchantQrData

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.timeToLive = @0;
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"referenceId": @"referenceId", @"referenceType": @"referenceType", @"timeToLive": @"timeToLive" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"timeToLive"];
  return [optionalProperties containsObject:propertyName];
}

@end
