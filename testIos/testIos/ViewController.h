//
//  ViewController.h
//  testIos
//
//  Created by meibo-design on 30/5/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong,nonatomic) IBOutlet UILabel *userOutput;
@property (strong,nonatomic) IBOutlet UITextField *userInput;
- (IBAction)setOutput:(id)sender;

@end

