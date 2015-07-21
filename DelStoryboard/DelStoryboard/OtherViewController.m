//
//  OtherViewController.m
//  DelStoryboard
//
//  Created by meibo-design on 21/7/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//

#import "OtherViewController.h"

@interface OtherViewController ()

@end

@implementation OtherViewController

-(id)init{
    if ((self=[super init])) {
        self.level = 1;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.level = 1;
    self.title = [NSString stringWithFormat:@"Secondary %d",self.level];
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

- (IBAction)didTapNext:(id)sender {
    OtherViewController *otherViewController = [[OtherViewController alloc]initWithNibName:@"OtherViewController" bundle:nil];
    otherViewController.level = self.level + 1;
    //otherViewController.title = [NSString stringWithFormat:@"Secondary %d",otherViewController.level];
    [[self navigationController] pushViewController:otherViewController animated:true];
}

- (IBAction)didTapBack:(id)sender {
    [[self navigationController]popViewControllerAnimated:true];
}
@end
