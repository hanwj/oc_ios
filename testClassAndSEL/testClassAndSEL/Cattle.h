//
//  Cattle.h
//  testClassAndSEL
//
//  Created by meibo-design on 27/7/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cattle:NSObject
{
    NSInteger legsCount;
}

-(void)saySomething;
@property(nonatomic,assign) NSInteger legsCount;

@end
