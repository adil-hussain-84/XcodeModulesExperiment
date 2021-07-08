//
//  SomeAwesomeFramework.m
//  Framework1
//
//  Created by Adil Hussain on 06/07/2021.
//

#import "SomeAwesomeFramework.h"
#import "GreetingHelper.h"

@implementation SomeAwesomeFramework {
    GreetingHelper *greetingHelper;
}

- (instancetype)init {
    if (self = [super init]) {
        greetingHelper = [[GreetingHelper alloc] init];
    }
    return self;
}

-(NSString *)greetings {
    NSMutableString *mutableString = [NSMutableString string];
    
    [mutableString appendString:[greetingHelper englishGreeting]];
    [mutableString appendString:@" "];
    [mutableString appendString:[greetingHelper italianGreeting]];
    [mutableString appendString:@" "];
    [mutableString appendString:[greetingHelper spanishGreeting]];
    
    return mutableString;
}

@end
