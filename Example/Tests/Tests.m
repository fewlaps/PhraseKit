@import XCTest;
@import PhraseKit.PhraseKit;

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    NSString* stringWithoutPlaceholders = @"lest play with placeholders value 1 and value two";
    NSString* stringWithPlaceholders = @"lest play with placeholders {one} and {two}";
    NSString* newString = [stringWithPlaceholders replacePlaceholdersUsingDictionary:@{@"one":@"value 1",@"two":@"value two"}];
    XCTAssertNotNil(newString,@"string should not be nil");
    XCTAssert([newString isEqualToString:stringWithoutPlaceholders], @"strings should be equeal");
}

@end

