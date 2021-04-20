#import "OAIImportPaymentInstrumentsResponseCreditCards.h"

@implementation OAIImportPaymentInstrumentsResponseCreditCards

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"transactionRef": @"transactionRef", @"transactionTimestamp": @"transactionTimestamp", @"transactionType": @"transactionType", @"transactionResponseCode": @"transactionResponseCode", @"transactionResponseText": @"transactionResponseText", @"orderNumber": @"orderNumber", @"bin": @"bin", @"cardSuffix": @"cardSuffix", @"expiryMonth": @"expiryMonth", @"expiryYear": @"expiryYear", @"amount": @"amount", @"result": @"result", @"errorMessage": @"errorMessage" }];
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
