//
//  AppDelegate.h
//  iTahDoodle
//
//  Created by meibo-design on 8/7/15.
//
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate,UITableViewDataSource>
{
    UITableView *taskTable;
    UITextField *taskField;
    UIButton *taskButton;
    
    NSMutableArray *tasks;
}

-(void)addTask:(id)sender;
@property (strong, nonatomic) UIWindow *window;


@end

