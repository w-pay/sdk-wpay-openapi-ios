#import "OAIRefundsRequestStoreData.h"

@implementation OAIRefundsRequestStoreData

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"groupId": @"groupId", @"terminalId": @"terminalId", @"storeId": @"storeId", @"laneId": @"laneId", @"stan": @"stan", @"rrn": @"rrn", @"transactionTimestamp": @"transactionTimestamp" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"groupId", @"laneId", ];
  return [optionalProperties containsObject:propertyName];
}

@end