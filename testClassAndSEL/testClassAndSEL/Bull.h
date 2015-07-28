//
//  Bull.h
//  testClassAndSEL
//
//  Created by meibo-design on 27/7/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//
#import "Cattle.h"

@interface Bull : Cattle
{
    NSString *skinColor;
}
//@property(nonatomic,copy) NSString *skinColor;
-(void)setSkinColor:(NSString *)color;
-(void)saySomething;
@end
