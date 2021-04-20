#import "OAITransactionHistoryRequest.h"

@implementation OAITransactionHistoryRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"transactionTypes": @"transactionTypes", @"paymentInstrumentIds": @"paymentInstrumentIds", @"clientReference": @"clientReference", @"transactionRef": @"transactionRef", @"orderNumber": @"orderNumber", @"startDate": @"startDate", @"endDate": @"endDate", @"maxRecords": @"maxRecords" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"paymentInstrumentIds", @"clientReference", @"transactionRef", @"orderNumber", @"startDate", @"endDate", @"maxRecords"];
  return [optionalProperties containsObject:propertyName];
}

@end
