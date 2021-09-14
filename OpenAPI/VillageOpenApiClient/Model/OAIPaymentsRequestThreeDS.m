#import "OAIPaymentsRequestThreeDS.h"

@implementation OAIPaymentsRequestThreeDS

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"messageVersion": @"messageVersion", @"xid": @"xid", @"authenticationValue": @"authenticationValue", @"dsTransID": @"dsTransID", @"eci": @"eci", @"aresStatus": @"aresStatus", @"veresEnrolled": @"veresEnrolled", @"transStatus": @"transStatus", @"sli": @"sli" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"sli"];
  return [optionalProperties containsObject:propertyName];
}

@end
