//
//  PrimeFinder.m
//  PrimeFinder
//
//  Created by meibo-design on 21/7/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//

#import "PrimeFinder.h"

@implementation PrimeFinder

@synthesize startDate;
@synthesize endDate;
@synthesize primes;
@dynamic elapsedTime;

-(id)initWithMaxNumber:(NSInteger)inMaxNumber
{
    if ((self = [super init])) {
        maxNumber = inMaxNumber;
        primes = [NSMutableArray array];
    }
    return self;
}

-(BOOL)isPrime:(NSInteger)num
{
    for (NSInteger i=2; i < num; ++i) {
        if ((num % i) == 0) {
            return NO;
        }
    }
    return YES;
}

-(void)start
{
    startDate = [NSDate date];
    for (NSInteger num = 2; num <= maxNumber; ++num) {
        if ([self isPrime:num]) {
            [primes addObject:[NSNumber numberWithInteger:num]];
        }
    }
    endDate = [NSDate date];
}

-(NSTimeInterval)elapsedTime
{
    return [endDate timeIntervalSinceDate:startDate];
}

@end