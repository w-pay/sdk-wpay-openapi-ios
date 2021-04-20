#import "OAIInstoreCustomerPaymentsAgreementsData.h"

@implementation OAIInstoreCustomerPaymentsAgreementsData

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"clientReference": @"clientReference", @"customerRef": @"customerRef", @"orderNumber": @"orderNumber", @"_description": @"description", @"billingAddress": @"billingAddress", @"paymentAgreement": @"paymentAgreement" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"customerRef", @"orderNumber", @"_description", ];
  return [optionalProperties containsObject:propertyName];
}

@end
