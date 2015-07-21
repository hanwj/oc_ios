//
//  PrimeFinder.m
//  testBlock
//
//  Created by meibo-design on 21/7/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//

#import "PrimeFinder.h"

@implementation PrimeFinder

@dynamic elapsedTime;

-(id)initWithMaxNumber:(NSInteger)inMaxNumber
{
    if ((self=[super init])) {
        maxNumber = inMaxNumber;
        candidates = [NSMutableArray new];
        for (NSInteger i = 2; i <= inMaxNumber; ++i) {
            [candidates addObject:[NSNumber numberWithInteger:i]];
        }
    }
    return self;
}

-(NSMutableArray *)filterArray:(NSArray *)array withBlock:(BOOL(^)(id))block
{
    NSMutableArray *result = [[NSMutableArray alloc]init];
    for(id i in array)
    {
        if(block(i))
        {
            [result addObject:i];
        }
    }
    return result;
}

-(void) start
{
    BOOL (^isPrime)(id) = ^(id number)
    {
        NSInteger value = [number integerValue];
        for (NSInteger i = 2; i < value; ++i) {
            if (( value% i) == 0) {
                return NO;
            }
        }
        return YES;
    };
    self.startDate = [NSDate date];
//    [self filterArray:candidates withBlock:isPrime];
    [self setPrimes:[self filterArray:candidates withBlock:isPrime]];
    self.endDate = [NSDate date];
}

-(NSTimeInterval)elapsedTime
{
    return [endDate timeIntervalSinceDate:startDate];
}

@end