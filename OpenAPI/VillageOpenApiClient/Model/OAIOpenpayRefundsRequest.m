#import "OAIOpenpayRefundsRequest.h"

@implementation OAIOpenpayRefundsRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"clientReference": @"clientReference", @"orderNumber": @"orderNumber", @"merchantTransactedAt": @"merchantTransactedAt", @"refunds": @"refunds", @"storeData": @"storeData" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"orderNumber", @"merchantTransactedAt", @"storeData"];
  return [optionalProperties containsObject:propertyName];
}

@end
