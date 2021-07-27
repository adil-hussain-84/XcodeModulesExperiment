//
//  GreetingHelperTests1.m
//  Framework1Tests
//
//  Created by Adil Hussain on 06/07/2021.
//

@import XCTest;

#import "GreetingHelper.h"
#import <Library1/EnglishGreeter.h>
#import <Library2/ItalianGreeter.h>
#import <Library2/SpanishGreeter.h>

@interface GreetingHelperTests1 : XCTestCase
@end

@implementation GreetingHelperTests1 {
    GreetingHelper *greetingHelper;
}

- (void)setUp {
    [super setUp];
    greetingHelper = [[GreetingHelper alloc] init];
}

- (void)test_englishGreeting_1 {
    // When.
    NSString *greeting = [greetingHelper englishGreeting];
    
    // Then.
    XCTAssertEqualObjects(@"Hello", greeting);
}

- (void)test_englishGreeting_2 {
    // When.
    NSString *greeting = [greetingHelper englishGreeting];
    
    // Then.
    XCTAssertEqualObjects([[[ABCEnglishGreeter alloc] init] greeting], greeting);
}

- (void)test_italianGreeting_1 {
    // When.
    NSString *greeting = [greetingHelper italianGreeting];
    
    // Then.
    XCTAssertEqualObjects(@"Ciao", greeting);
}

- (void)test_italianGreeting_2 {
    // When.
    NSString *greeting = [greetingHelper italianGreeting];
    
    // Then.
    XCTAssertEqualObjects([[[ABCItalianGreeter alloc] init] greeting], greeting);
}

- (void)test_spanishGreeting_1 {
    // When.
    NSString *greeting = [greetingHelper spanishGreeting];
    
    // Then.
    XCTAssertEqualObjects(@"Hola", greeting);
}

- (void)test_spanishGreeting_2 {
    // When.
    NSString *greeting = [greetingHelper spanishGreeting];
    
    // Then.
    XCTAssertEqualObjects([[[ABCSpanishGreeter alloc] init] greeting], greeting);
}

@end
