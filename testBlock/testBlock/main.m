//
//  main.m
//  testBlock
//
//  Created by meibo-design on 21/7/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrimeFinder.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        PrimeFinder *finder = [[PrimeFinder alloc] initWithMaxNumber:15000];
        [finder start];
        /*for (NSNumber *number in [finder primes]) {
         NSLog(@"found prime : %@",number);
         }*/
        NSLog(@"primes is %@",[finder primes]);
        NSLog(@"total time is %fs",[finder elapsedTime]);
        NSLog(@"Hello, World!");
    }
    return 0;
}
