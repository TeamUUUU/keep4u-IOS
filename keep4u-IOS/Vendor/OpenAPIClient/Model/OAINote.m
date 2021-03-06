#import "OAINote.h"

@implementation OAINote

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"boardId": @"board_id", @"title": @"title", @"content": @"content", @"createdAt": @"created_at", @"changedAt": @"changed_at", @"attachments": @"attachments" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"boardId", @"createdAt", @"changedAt", @"attachments"];
  return [optionalProperties containsObject:propertyName];
}

@end
