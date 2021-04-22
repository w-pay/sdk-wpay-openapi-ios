#import "OAIPaymentAgreementResponse.h"

@implementation OAIPaymentAgreementResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"transactionReceipt": @"transactionReceipt", @"paymentToken": @"paymentToken", @"paymentAgreement": @"paymentAgreement", @"fraudResponse": @"fraudResponse", @"extendedTransactionData": @"extendedTransactionData", @"externalServiceCode": @"externalServiceCode", @"externalServiceMessage": @"externalServiceMessage" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"paymentToken", @"fraudResponse", @"extendedTransactionData", @"externalServiceCode", @"externalServiceMessage"];
  return [optionalProperties containsObject:propertyName];
}

@end
