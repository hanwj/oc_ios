//
//  ViewController.m
//  DelStoryboard
//
//  Created by meibo-design on 21/7/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//

#import "ViewController.h"
#import "ModalViewController.h"
#import "OtherViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"Main";
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc]initWithTitle:@"Root" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.rightBarButtonItem = rightItem;
    self.navigationItem.prompt = @"hello ";
    self.navigationController.toolbarHidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTapMotal:(id)sender {
    ModalViewController *modalViewController = [[ModalViewController alloc] initWithNibName:@"ModalViewController" bundle:nil];
    [self presentViewController:modalViewController animated:true completion:nil];
}

- (IBAction)didTapNext:(id)sender {
    OtherViewController *otherViewController = [[OtherViewController alloc] initWithNibName:@"OtherViewController" bundle:nil];
    [[self navigationController] pushViewController:otherViewController animated:true];
}
@end
