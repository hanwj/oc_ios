//
//  main.m
//  testString
//
//  Created by meibo-design on 22/7/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//

#import <Foundation/Foundation.h>

void testNSArray()
{
    NSArray *array = [NSArray arrayWithObjects:@"caixiaoxiao1",@"caixiaoxiao2",@"caixiaoxiao3", nil];
    for (NSInteger i=0; i < [array count]; i++) {
        NSLog(@"array index: %ld,value:%@",i,[array objectAtIndex:i]);
    }
    
    NSEnumerator *enumerator = [array objectEnumerator];
    NSString *item = nil;
    while ((item = [enumerator nextObject])) {
        NSLog(@"value:%@",item);
    }
    
    //返回最后一个元素
    NSString *lastStr = [array lastObject];
    
    //返回指定元素的索引值
    NSInteger pos = [array indexOfObject:lastStr];
    NSMutableArray *mutableArray = [NSMutableArray arrayWithArray:array];
    //[mutableArray sortUsingDescriptors:<#(NSArray *)#>]
    //[array makeObjectsPerformSelector:@selector(testNSDictionary)];
    
}

void testNSDictionary()
{
    NSDictionary *dict = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"a",@"b",@"c",nil] forKeys:[NSArray arrayWithObjects:@"1",@"2",@"3",nil]];
    NSLog(@"dict key:1,value:%@",[dict objectForKey:[NSString stringWithCString:"1"]]);
}

void testNSSet()
{
    NSSet *set = [NSSet setWithObjects:@"a",@"b",@"c" ,nil];
    
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSURL *url = [NSURL URLWithString:@"http://www.baidu.com"];
        NSString *str = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"str is %@",str);
        NSLog(@"Hello, World!");
        
        NSMutableString *str2 = [NSMutableString stringWithFormat:@"123123"];
        [str2 appendFormat:@"dddddd"];
        NSLog(@"str2 is %@",str2);
        
        testNSArray();
        testNSDictionary();
    }
    return 0;
}

