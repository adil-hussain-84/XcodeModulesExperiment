//
//  GreetingHelper.m
//  Framework1
//
//  Created by Adil Hussain on 06/07/2021.
//

#import "GreetingHelper.h"
#import <Library1/Greeter.h>

@implementation GreetingHelper

-(NSString *)greeting {
    return [[[Greeter alloc] init] greeting];
}

@end
