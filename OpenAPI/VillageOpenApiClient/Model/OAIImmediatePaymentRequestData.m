#import "OAIImmediatePaymentRequestData.h"

@implementation OAIImmediatePaymentRequestData

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"clientReference": @"clientReference", @"orderNumber": @"orderNumber", @"skipRollback": @"skipRollback", @"allowPartialSuccess": @"allowPartialSuccess", @"payments": @"payments", @"posPayload": @"posPayload", @"merchantPayload": @"merchantPayload", @"transactionType": @"transactionType" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"skipRollback", @"allowPartialSuccess", @"posPayload", @"merchantPayload", @"transactionType"];
  return [optionalProperties containsObject:propertyName];
}

@end
