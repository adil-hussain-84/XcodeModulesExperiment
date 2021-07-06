//
//  Framework1Tests.m
//  Framework1Tests
//
//  Created by Adil Hussain on 06/07/2021.
//

#import <XCTest/XCTest.h>
#import <Framework1/SomeAwesomeFramework.h>

@interface Framework1Tests : XCTestCase

@end

@implementation Framework1Tests

- (void)test_greeting {
    // Given.
    SomeAwesomeFramework *someAwesomeFramework = [[SomeAwesomeFramework alloc] init];
    
    // When.
    NSString *actual = [someAwesomeFramework greeting];
    
    // Then.
    XCTAssertEqual("Hello", actual);
}

@end
