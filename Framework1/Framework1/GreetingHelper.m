//
//  GreetingHelper.m
//  Framework1
//
//  Created by Adil Hussain on 06/07/2021.
//

#import "GreetingHelper.h"
#import <Library1/EnglishGreeter.h>
#import <Library2/ItalianGreeter.h>
#import <Library2/SpanishGreeter.h>

@implementation GreetingHelper

-(NSString *)englishGreeting {
    return [[[ABCEnglishGreeter alloc] init] greeting];
}

-(NSString *)italianGreeting {
    return [[[ABCItalianGreeter alloc] init] greeting];
}

-(NSString *)spanishGreeting {
    return [[[ABCSpanishGreeter alloc] init] greeting];
}

@end
