//
//  AppDelegate.m
//  iTahDoodle
//
//  Created by meibo-design on 8/7/15.
//
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

#pragma mark --应用委托对象的回调方法
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    tasks = [[NSMutableArray alloc] init];
    
    CGRect windowFrame = [[UIScreen mainScreen] bounds];
    UIWindow *window = [[UIWindow alloc] initWithFrame:windowFrame];
    [self setWindow:window];
    
    CGRect tableFrame = CGRectMake(0,80,320,380);
    CGRect fieldFrame = CGRectMake(20,40,200,31);
    CGRect buttonFrame = CGRectMake(228,40,72,31);
    
    taskTable = [[UITableView alloc] initWithFrame:tableFrame style:UITableViewStyleGrouped];
    [taskTable setSeparatorStyle:UITableViewCellSeparatorStyleSingleLineEtched];
    [taskTable setDataSource:self];  //设置数据源
    
    taskField = [[UITextField alloc] initWithFrame:fieldFrame];
    [taskField setBorderStyle:UITextBorderStyleRoundedRect];
    [taskField setPlaceholder:@"Type a task,tap Insert"];
    
    taskButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [taskButton setFrame:buttonFrame];
    //设置按钮的回调，通过目标-动作机制实现
    [taskButton addTarget:self action:@selector(addTask:) forControlEvents:UIControlEventTouchUpInside];
    [taskButton setTitle:@"Insert" forState:UIControlStateNormal];
    
    
    [[self window] addSubview:taskTable];
    [[self window] addSubview:taskField];
    [[self window] addSubview:taskButton];
    
    [[self window] setBackgroundColor:[UIColor whiteColor]];
    [[self window] makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mask --button响应方法
-(void)addTask:(id)sender
{
    NSString *text = [taskField text];
    if([text isEqualToString:@""])
    {
        return;
    }
    
    if(!tasks)
    {
        tasks = [[NSMutableArray alloc]init];
    }
    [tasks addObject:text];
    [taskTable reloadData];
    [taskField setText:@""];
    [taskField resignFirstResponder];
}

#pragma mask --管理表格视图
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tasks count];
}

-(UITableViewCell *)tableView:(UITableView *)tableVew cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *c = [taskTable dequeueReusableCellWithIdentifier:@"Cell"];
    if (! c) {
        c = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    NSString *item = [tasks objectAtIndex:[indexPath row]];
    
    [[c textLabel]setText:item];
    
    return c;
}
@end
