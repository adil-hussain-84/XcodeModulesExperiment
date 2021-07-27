//
//  IOSClassTests1.m
//  Framework1Tests
//
//  Created by Adil Hussain on 26/07/2021.
//

@import XCTest;
#import <IOSClass.h>

@interface IOSClassTests1 : XCTestCase
@end

@implementation IOSClassTests1

- (void)test_forName {
    XCTAssertNotNil([IOSClass forName:@"NSString"]);
    XCTAssertNotNil([IOSClass forName:@"java.lang.String"]);
    XCTAssertNotNil([IOSClass forName:@"EnglishGreeter"]);
    XCTAssertNotNil([IOSClass forName:@"ItalianGreeter"]);
    XCTAssertNotNil([IOSClass forName:@"SpanishGreeter"]);
}

@end
