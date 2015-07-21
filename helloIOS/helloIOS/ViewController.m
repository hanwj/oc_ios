//
//  ViewController.m
//  helloIOS
//
//  Created by meibo-design on 8/7/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize userInput;
@synthesize userOutput;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidUnload{
    [self setUserOutput:nil];
    [self setUserInput:nil];
    [super viewDidUnload];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendOutput:(id)sender
{
    NSString *t = [userInput text];
    if ([t isEqualToString:@""]) {
        return;
    }
    [userOutput setText:t];
    [userInput setText:@""];
    [userInput resignFirstResponder];
}

@end
