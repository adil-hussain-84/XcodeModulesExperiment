//
//  SomeAwesomeFramework.m
//  Framework1
//
//  Created by Adil Hussain on 06/07/2021.
//

#import "SomeAwesomeFramework.h"
#import <Library1/Greeter.h>

@implementation SomeAwesomeFramework

-(NSString *)greeting {
    return [[[Greeter alloc] init] greeting];
}

@end
