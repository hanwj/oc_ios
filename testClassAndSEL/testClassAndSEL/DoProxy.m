//
//  DoProxy.m
//  testClassAndSEL
//
//  Created by meibo-design on 27/7/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DoProxy.h"

#define BULL_CLASS @"Bull"
#define CATTLE_CLASS @"Cattle"
#define SET_SKIN_COLOR @"setSkinColor:"

@implementation DoProxy

-(void)setAllIVars
{
    cattle = [NSMutableArray array];
    [cattle addObject:[[Cattle alloc]init]];
    bullClass = NSClassFromString(BULL_CLASS);
    [cattle addObject:[[bullClass alloc]init]];
    [cattle addObject:[[bullClass alloc]init]];
    
    say = @selector(saySomething);
    skin = NSSelectorFromString(SET_SKIN_COLOR);
}

-(void)doWithCattleId:(id)aCattle colorParam:(NSString *)color
{
    NSString *cattleClassName = [aCattle className];
    if ([cattleClassName isEqualToString:BULL_CLASS] || [cattleClassName isEqualToString:CATTLE_CLASS]) {
        [aCattle setLegsCount:4];
        if ([aCattle respondsToSelector:skin]) {
            [aCattle performSelector:skin withObject:color];
        }
        else{
            NSLog(@"Hi,I am a %@,have not skinColor",cattleClassName);
        }
        [aCattle performSelector:say];
    }
    else{
        NSLog(@"Hi,you are a %@,but I like cattle or bull",cattleClassName);
    }
}

-(void)functionPointers
{
    setSkinColor_func = (void(*)(id,SEL,NSString *))[[cattle objectAtIndex:1]methodForSelector:skin];
    say_func = [[cattle objectAtIndex:1]methodForSelector:say];
    setSkinColor_func([cattle objectAtIndex:1],skin,@"verbose");
//    say_func([cattle objectAtIndex:1],say);
    //say_func();
}

-(void)SELFuncs
{
    [self doWithCattleId:[cattle objectAtIndex:0] colorParam:@"brown"];
    [self doWithCattleId:[cattle objectAtIndex:1] colorParam:@"red"];
    [self doWithCattleId:[cattle objectAtIndex:2] colorParam:@"black"];
    
    [self doWithCattleId:self colorParam:@"white"];
}

@end