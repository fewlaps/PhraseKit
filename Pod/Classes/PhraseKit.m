#import "PhraseKit.h"

NSString *const PLACEHOLDER_REGEX = @"\\{(.+?)\\}";


@implementation NSString (Placeholders)

- (NSString*) replacePlaceholdersUsingDictionary:(NSDictionary *)dictionary {
    return [self replacePlaceholdersBlock:^NSString *(NSString *placeholder){
        return dictionary[placeholder];
    }];
}

- (NSString *)replacePlaceholdersBlock:(PlaceholderBlock)block
{
    NSMutableString *resultString = [self mutableCopy];
    
    __block NSError *error;
    __block NSUInteger placeholderOffset = 0;
    
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:PLACEHOLDER_REGEX options:NSRegularExpressionCaseInsensitive error:&error];
    [regex enumerateMatchesInString:self options:NSMatchingReportCompletion range:NSMakeRange(0, [self length]) usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop) {
        if (result) {
            @try{
                NSRange placeholderRange = [result rangeAtIndex:0];
                NSRange placeholderKeyRange = [result rangeAtIndex:1];
                
                NSString* placeholderKey = [self substringWithRange:placeholderKeyRange];
                NSString* placeholderValue = block (placeholderKey);
                
                if ([placeholderValue isKindOfClass:[NSString class]])
                {
                    [resultString replaceCharactersInRange:NSMakeRange(placeholderOffset + placeholderRange.location, placeholderRange.length) withString:placeholderValue];
                    placeholderOffset += ([placeholderValue length] - placeholderRange.length );
                }
                
            }@catch (NSException *e){
            }
        }
    }];
    return resultString;
}



@end
