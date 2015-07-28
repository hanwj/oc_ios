//
//  main.m
//  testClassAndSEL
//
//  Created by meibo-design on 27/7/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DOProxy.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        DoProxy *proxy = [[DoProxy alloc]init];
        [proxy setAllIVars];
        [proxy SELFuncs];
        [proxy functionPointers];
    }
    return 0;
}
