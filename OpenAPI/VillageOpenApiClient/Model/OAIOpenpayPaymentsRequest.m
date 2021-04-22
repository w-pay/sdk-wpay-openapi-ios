#import "OAIOpenpayPaymentsRequest.h"

@implementation OAIOpenpayPaymentsRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"transactionType": @"transactionType", @"clientReference": @"clientReference", @"customerRef": @"customerRef", @"orderNumber": @"orderNumber", @"channel": @"channel", @"tradingAccountId": @"tradingAccountId", @"merchantTransactedAt": @"merchantTransactedAt", @"payments": @"payments", @"storeData": @"storeData" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"customerRef", @"tradingAccountId", @"merchantTransactedAt", ];
  return [optionalProperties containsObject:propertyName];
}

@end
