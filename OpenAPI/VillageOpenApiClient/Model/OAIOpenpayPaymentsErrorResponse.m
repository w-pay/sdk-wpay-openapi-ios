#import "OAIOpenpayPaymentsErrorResponse.h"

@implementation OAIOpenpayPaymentsErrorResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"httpStatusCode": @"httpStatusCode", @"errorCode": @"errorCode", @"errorMessage": @"errorMessage", @"errorDetail": @"errorDetail", @"paymentResponses": @"paymentResponses" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"paymentResponses"];
  return [optionalProperties containsObject:propertyName];
}

@end
