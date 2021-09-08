#import "OAIInlineResponse2002DataOrderItems.h"

@implementation OAIInlineResponse2002DataOrderItems

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"designId": @"designId", @"amount": @"amount", @"unitPrice": @"unitPrice", @"totalPrice": @"totalPrice", @"quantity": @"quantity", @"isGifting": @"isGifting", @"mobileNumber": @"mobileNumber" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"mobileNumber"];
  return [optionalProperties containsObject:propertyName];
}

@end
