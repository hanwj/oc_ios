//
//  ViewController.h
//  SwitchTest
//
//  Created by meibo-design on 20/7/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISwitch *rightSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *leftSwitch;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
- (IBAction)sliderChanged:(id)sender;
- (IBAction)switchChanged:(id)sender;
- (IBAction)segmentChanged:(id)sender;

@end
