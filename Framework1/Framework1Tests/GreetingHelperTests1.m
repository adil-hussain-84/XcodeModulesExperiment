//
//  GreetingHelperTests1.m
//  Framework1Tests
//
//  Created by Adil Hussain on 06/07/2021.
//

@import XCTest;

#import "GreetingHelper.h"
#import <Library1/Greeter.h>

@interface GreetingHelperTests1 : XCTestCase
@end

@implementation GreetingHelperTests1 {
    GreetingHelper *greetingHelper;
}

- (void)setUp {
    [super setUp];
    greetingHelper = [[GreetingHelper alloc] init];
}

- (void)test_greeting_1 {
    // When.
    NSString *greeting = [greetingHelper greeting];
    
    // Then.
    XCTAssertEqualObjects(@"Hello", greeting);
}

- (void)test_greeting_2 {
    // When.
    NSString *greeting = [greetingHelper greeting];
    
    // Then.
    XCTAssertEqualObjects([[[Greeter alloc] init] greeting], greeting);
}

@end
