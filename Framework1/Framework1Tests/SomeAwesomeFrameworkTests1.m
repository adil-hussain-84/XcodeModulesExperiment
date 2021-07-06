//
//  Framework1Tests.m
//  Framework1Tests
//
//  Created by Adil Hussain on 06/07/2021.
//

@import XCTest;
@import Framework1;
#import <Library1/Greeter.h>

@interface SomeAwesomeFrameworkTests1 : XCTestCase
@end

@implementation SomeAwesomeFrameworkTests1 {
    SomeAwesomeFramework *someAwesomeFramework;
}

- (void)setUp {
    [super setUp];
    someAwesomeFramework = [[SomeAwesomeFramework alloc] init];
}

- (void)test_greeting_1 {
    // When.
    NSString *greeting = [someAwesomeFramework greeting];
    
    // Then.
    XCTAssertEqualObjects(@"Hello", greeting);
}

- (void)test_greeting_2 {
    // When.
    NSString *greeting = [someAwesomeFramework greeting];
    
    // Then.
    XCTAssertEqualObjects([[[Greeter alloc] init] greeting], greeting);
}

@end
