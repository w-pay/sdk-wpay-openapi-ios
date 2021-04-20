#import "OAITransactionHistoryResponseTransactions.h"

@implementation OAITransactionHistoryResponseTransactions

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"transactionType": @"transactionType", @"transactionRef": @"transactionRef", @"transactionTimestamp": @"transactionTimestamp", @"applicationRef": @"applicationRef", @"applicationName": @"applicationName", @"clientReference": @"clientReference", @"orderNumber": @"orderNumber", @"bin": @"bin", @"network": @"network", @"cardSuffix": @"cardSuffix", @"amount": @"amount", @"comment": @"comment", @"paymentInstrumentType": @"paymentInstrumentType" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[];
  return [optionalProperties containsObject:propertyName];
}

@end
