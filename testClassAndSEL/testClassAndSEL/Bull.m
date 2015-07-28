//
//  Bull.m
//  testClassAndSEL
//
//  Created by meibo-design on 27/7/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bull.h"

@implementation Bull

/*@synthesize skinColor;*/

-(void)setSkinColor:(NSString *)color
{
    skinColor = color;
}

-(void)saySomething
{
    NSLog(@" I am a %@ Bull,I have %ld legs",skinColor,legsCount);
}

@end