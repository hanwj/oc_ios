//
//  Cattle.m
//  testClassAndSEL
//
//  Created by meibo-design on 27/7/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cattle.h"

@implementation Cattle
@synthesize legsCount;

-(void)saySomething
{
    NSLog(@"I am a cattle,I have %ld legs",legsCount);
}

@end
