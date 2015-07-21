//
//  PrimeFinder.h
//  testBlock
//
//  Created by meibo-design on 21/7/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//

#ifndef testBlock_PrimeFinder_h
#define testBlock_PrimeFinder_h

#import <Foundation/Foundation.h>

@interface PrimeFinder :NSObject
{
    NSMutableArray *candidates;
    NSMutableArray *primes;
    NSInteger maxNumber;
    NSDate *startDate;
    NSDate *endDate;
}

-(id)initWithMaxNumber:(NSInteger)inMaxNumber;
-(void)start;

@property(nonatomic,retain) NSMutableArray *primes;
@property(nonatomic,retain) NSDate *startDate;
@property(nonatomic,retain) NSDate *endDate;
@property(nonatomic,readonly) NSTimeInterval elapsedTime;

@end
#endif
