#import "OAIListPaymentInstrumentsResponsePaymentAgreements.h"

@implementation OAIListPaymentInstrumentsResponsePaymentAgreements

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"paymentToken": @"paymentToken", @"status": @"status", @"lastUpdated": @"lastUpdated", @"lastUsed": @"lastUsed", @"createdOn": @"createdOn", @"primary": @"primary", @"allowed": @"allowed", @"type": @"type", @"paymentInstrumentId": @"paymentInstrumentId", @"scheme": @"scheme", @"cardSuffix": @"cardSuffix", @"expiryMonth": @"expiryMonth", @"expiryYear": @"expiryYear", @"startDate": @"startDate", @"endDate": @"endDate", @"chargeFrequency": @"chargeFrequency", @"chargeAmount": @"chargeAmount", @"chargeCycle": @"chargeCycle", @"expired": @"expired", @"updateURL": @"updateURL", @"stepUp": @"stepUp" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"scheme", @"cardSuffix", @"expiryMonth", @"expiryYear", @"stepUp"];
  return [optionalProperties containsObject:propertyName];
}

@end