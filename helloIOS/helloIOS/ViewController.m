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
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 50, 30, 30)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(0, 0, 100, 100);
    btn.backgroundColor = [UIColor blueColor];
    [btn addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:btn];
}

-(void)clickBtn:(id)sender
{
    NSLog(@"123");
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
