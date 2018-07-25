//
//  AppDelegate.m
//  TestTabBar
//
//  Created by meibo-design on 29/7/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    UIWindow *window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    [self setWindow:window];
    NSLog(@"screen bounds : %@",NSStringFromCGRect([window frame]));
    
    UITabBarController *tabBarController = [[UITabBarController alloc]init];
    NSMutableArray *viewControllers = [[NSMutableArray alloc]init];
    for (NSInteger i=1; i<=6; ++i) {
        ViewController *vc = [[ViewController alloc]initWithNibName:@"ViewController" bundle:nil];
        vc.title = [NSString stringWithFormat:@"页面%ld",i];
        vc.tabBarItem.title = vc.title;
        vc.tabBarItem.badgeValue = @"99";
        [viewControllers addObject:vc];
    }
    tabBarController.viewControllers = viewControllers;
    tabBarController.customizableViewControllers = [[NSArray alloc]initWithObjects:viewControllers[0],viewControllers[1], nil];
//    ViewController *vc1 = [[ViewController alloc]initWithNibName:@"ViewController" bundle:nil];
//    vc1.title = @"first";
//    ViewController *vc2 = [[ViewController alloc]initWithNibName:@"ViewController" bundle:nil];
//    vc2.title = @"second";
    self.window.rootViewController = tabBarController;
    [window makeKeyAndVisible];
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

@end
