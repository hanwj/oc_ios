//
//  main.m
//  testOC
//
//  Created by meibo-design on 3/6/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//

#import <Foundation/Foundation.h>

NSArray *map(NSArray *items,id(^block)(id item))
{
    NSMutableArray *result = [NSMutableArray array];
    
    for(id item in items)
    {
        [result addObject:block(item)];
    }
    
    return result;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSTimeZone *timeZone = [NSTimeZone systemTimeZone];
        BOOL isLightSavingTime = [timeZone isDaylightSavingTime];
        NSLog(@"The current time :%s",isLightSavingTime?"YES":"NO");
        NSLog(@"D D  D %@ %d",isLightSavingTime?@"YES":@"NO",isLightSavingTime);
        
        void (^myBlock)(NSString *) = ^(NSString * x)
        {
            NSLog(@"%@",x);
        };
        NSArray *result = map([[NSArray alloc]initWithObjects:@"1",@"2",@"3", nil],^(id item){return [NSString stringWithFormat:@"%@_new",item];});
        NSLog(@"result is %@",result);
        
        void (^block)(NSString *) = ^(NSString *str)
        {
            
        };
        
        NSString *string = @"adafd";
        NSInteger value = [string intValue];
        NSLog(@"%ld",value);
    }
    
    return 0;
}
