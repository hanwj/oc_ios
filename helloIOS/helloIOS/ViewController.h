//
//  ViewController.h
//  helloIOS
//
//  Created by meibo-design on 8/7/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *userOutput;
@property (weak, nonatomic) IBOutlet UITextField *userInput;

- (IBAction)sendOutput:(id)sender;
@end

