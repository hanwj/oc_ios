//
//  PrimeFinder.h
//  PrimeFinder
//
//  Created by meibo-design on 21/7/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//

#ifndef PrimeFinder_PrimeFinder_h
#define PrimeFinder_PrimeFinder_h

#import <Foundation/Foundation.h>

@interface PrimeFinder : NSObject
{
    NSInteger maxNumber;
    NSDate *startDate;
    NSDate *endDate;
    NSMutableArray *primes;
}

@property(nonatomic,retain) NSDate *startDate;
@property(nonatomic,retain) NSDate *endDate;
@property(nonatomic,retain) NSMutableArray *primes;
@property(nonatomic,readonly) NSTimeInterval elapsedTime;

-(id)initWithMaxNumber:(NSInteger)inMaxNumber;
-(void)start;
@end

#endif
