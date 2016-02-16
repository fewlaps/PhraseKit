#import <Foundation/Foundation.h>

@interface NSString (Placeholders)

typedef NSString * (^PlaceholderBlock)(NSString *placeholder);

- (NSString*) replacePlaceholdersUsingDictionary:(NSDictionary *)dictionary;

@end

