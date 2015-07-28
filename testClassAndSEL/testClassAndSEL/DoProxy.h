//
//  DoProxy.h
//  testClassAndSEL
//
//  Created by meibo-design on 27/7/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//

#import "Bull.h"

@interface DoProxy : NSObject
{
    NSMutableArray *cattle;
    SEL say;
    SEL skin;
    
    void(*setSkinColor_func)(id,SEL,NSString *);
    
    IMP say_func;
    
    Class bullClass;
}

-(void)doWithCattleId:(id)aCattle colorParam:(NSString *)color;
-(void)setAllIVars;
-(void)SELFuncs;
-(void)functionPointers;
@end