//
//  SomeAwesomeFramework.m
//  Framework1
//
//  Created by Adil Hussain on 06/07/2021.
//

#import "SomeAwesomeFramework.h"
#import "GreetingHelper.h"

@implementation SomeAwesomeFramework

-(NSString *)greeting {
    return [[[GreetingHelper alloc] init] greeting];
}

@end
