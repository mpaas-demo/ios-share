//
//  AppDelegate.m
//  MPShareDemo_pod
//
//  Created by shifei.wkp on 2019/03/27.
//  Copyright © 2019 Alibaba. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSDictionary *configDic = @{
    @"weixin" : @{@"key":@"wxa077a4686304b04a", @"secret":@"aa81504c94d6e70cecd623f97be6256a", @"universalLink": @"https://com.mpaas.demo/"},
                            @"weibo" : @{@"key":@"1877934830", @"secret":@"1067b501c42f484262c1803406510af0"},
                            @"qq" : @{@"key":@"101815269", @"secret":@"6a5dde7d8e04e860646ec2187a92017d"},
                            @"alipay": @{@"key":@"2015060900117932"},/*该 key 对应的 bundleID 为"share.demo", 如需用来测试,请修改为自己申请的 key 或修改 bundleID 为"share.demo"*/
                            @"dingTalk": @{@"key":@"dingoaa4aipzuf2yifw17s"}};
    [APSKClient registerAPPConfig:configDic];
    
    return YES;
}

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
    [APSKClient handleOpenURL:url];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
