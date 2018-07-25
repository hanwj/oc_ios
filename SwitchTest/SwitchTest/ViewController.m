//
//  ViewController.m
//  SwitchTest
//
//  Created by meibo-design on 20/7/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)sliderChanged:(id)sender {
    UISlider * slider = (UISlider *)sender;
    int presentAtInt = (int)roundf(slider.value);
    self.sliderLabel.text = [NSString stringWithFormat:@"%i",presentAtInt];
}

- (IBAction)switchChanged:(id)sender {
    UISwitch *mySwitch = (UISwitch *)sender;
    BOOL setting = mySwitch.isOn;
    [self.leftSwitch  setOn:setting animated:YES];
    [self.rightSwitch setOn:setting animated:YES];
}

- (IBAction)segmentChanged:(id)sender {
    UISegmentedControl *segmentedControl = (UISegmentedControl *)sender;
    
    switch (segmentedControl.selectedSegmentIndex) {
        case 0:
            self.view.backgroundColor = [UIColor whiteColor];
            break;
        case 1:
            self.view.backgroundColor = [UIColor blueColor];
            break;
    }
}
@end
