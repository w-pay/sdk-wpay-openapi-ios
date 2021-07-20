#import "OAIPaymentsRequest.h"

@implementation OAIPaymentsRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"transactionType": @"transactionType", @"clientReference": @"clientReference", @"orderNumber": @"orderNumber", @"shippingAddress": @"shippingAddress", @"payments": @"payments", @"extendedMerchantData": @"extendedMerchantData", @"storeData": @"storeData", @"basketData": @"basketData", @"fraudPayload": @"fraudPayload" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"shippingAddress", @"extendedMerchantData", @"storeData", @"basketData", @"fraudPayload"];
  return [optionalProperties containsObject:propertyName];
}

@end
