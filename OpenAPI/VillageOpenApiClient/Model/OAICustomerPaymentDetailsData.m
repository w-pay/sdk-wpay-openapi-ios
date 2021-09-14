#import "OAICustomerPaymentDetailsData.h"

@implementation OAICustomerPaymentDetailsData

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"primaryInstrumentId": @"primaryInstrumentId", @"secondaryInstruments": @"secondaryInstruments", @"skipRollback": @"skipRollback", @"allowPartialSuccess": @"allowPartialSuccess", @"clientReference": @"clientReference", @"preferences": @"preferences", @"transactionType": @"transactionType" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"primaryInstrumentId", @"secondaryInstruments", @"skipRollback", @"allowPartialSuccess", @"clientReference", @"preferences", @"transactionType"];
  return [optionalProperties containsObject:propertyName];
}

@end
