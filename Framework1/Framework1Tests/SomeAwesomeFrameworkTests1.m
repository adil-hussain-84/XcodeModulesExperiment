//
//  Framework1Tests.m
//  Framework1Tests
//
//  Created by Adil Hussain on 06/07/2021.
//

@import XCTest;
@import Framework1;
#import <Library1/EnglishGreeter.h>
#import <Library2/ItalianGreeter.h>
#import <Library2/SpanishGreeter.h>

@interface SomeAwesomeFrameworkTests1 : XCTestCase
@end

@implementation SomeAwesomeFrameworkTests1 {
    SomeAwesomeFramework *someAwesomeFramework;
}

- (void)setUp {
    [super setUp];
    someAwesomeFramework = [[SomeAwesomeFramework alloc] init];
}

- (void)test_greetings_1 {
    // When.
    NSString *greetings = [someAwesomeFramework greetings];
    
    // Then.
    XCTAssertEqualObjects(@"Hello Ciao Hola", greetings);
}

- (void)test_greetings_2 {
    // When.
    NSString *greetings = [someAwesomeFramework greetings];
    
    // Then.
    NSMutableString *expected = [NSMutableString string];
    
    [expected appendString:[[[EnglishGreeter alloc] init] greeting]];
    [expected appendString:@" "];
    [expected appendString:[[[ItalianGreeter alloc] init] greeting]];
    [expected appendString:@" "];
    [expected appendString:[[[SpanishGreeter alloc] init] greeting]];
    
    XCTAssertEqualObjects(expected, greetings);
}

@end
