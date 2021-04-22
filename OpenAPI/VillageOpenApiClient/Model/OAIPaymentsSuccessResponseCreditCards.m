#import "OAIPaymentsSuccessResponseCreditCards.h"

@implementation OAIPaymentsSuccessResponseCreditCards

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"paymentInstrumentId": @"paymentInstrumentId", @"paymentToken": @"paymentToken", @"paymentTransactionRef": @"paymentTransactionRef", @"errorCode": @"errorCode", @"errorMessage": @"errorMessage", @"errorDetail": @"errorDetail", @"stepUp": @"stepUp", @"receiptData": @"receiptData", @"extendedTransactionData": @"extendedTransactionData", @"externalServiceCode": @"externalServiceCode", @"externalServiceMessage": @"externalServiceMessage", @"handlingInstructions": @"handlingInstructions" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"stepUp", @"receiptData", @"extendedTransactionData", @"externalServiceCode", @"externalServiceMessage", @"handlingInstructions"];
  return [optionalProperties containsObject:propertyName];
}

@end
