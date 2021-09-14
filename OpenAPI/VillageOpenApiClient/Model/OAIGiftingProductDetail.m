#import "OAIGiftingProductDetail.h"

@implementation OAIGiftingProductDetail

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"productId": @"productId", @"name": @"name", @"barCodeType": @"barCodeType", @"lastUpdateDateTime": @"lastUpdateDateTime", @"defaultDesign": @"defaultDesign", @"discountOffered": @"discountOffered", @"redemptionInstructions": @"redemptionInstructions", @"redemptionType": @"redemptionType", @"termsAndConditions": @"termsAndConditions", @"minValue": @"minValue", @"maxValue": @"maxValue", @"expiryPeriodInDays": @"expiryPeriodInDays", @"expiryPeriodText": @"expiryPeriodText", @"isActive": @"isActive", @"redemptionStores": @"redemptionStores", @"availability": @"availability", @"designs": @"designs" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"discountOffered", @"redemptionInstructions", @"termsAndConditions", @"expiryPeriodInDays", @"expiryPeriodText", @"redemptionStores", ];
  return [optionalProperties containsObject:propertyName];
}

@end
