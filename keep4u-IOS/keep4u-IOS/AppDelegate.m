//
//  AppDelegate.m
//  keep4u-IOS
//
//  Created by Дюмин Алексей on 25/10/2018.
//  Copyright © 2018 TeamUUUU. All rights reserved.
//

#import "AppDelegate.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    GIDSignIn* sharedInstance = [GIDSignIn sharedInstance];
    
    sharedInstance.clientID = @"397600752408-gfsd5g4kumsu05bb8u9ldr07u77c8bb2.apps.googleusercontent.com";
    sharedInstance.delegate = self;
    
    if (sharedInstance.hasAuthInKeychain)
    {
        [sharedInstance signInSilently];
    }
    
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
    
- (BOOL)application:(UIApplication *)app
            openURL:(NSURL *)url
            options:(NSDictionary<NSString *, id> *)options {
    return [[GIDSignIn sharedInstance] handleURL:url
                            sourceApplication:options[UIApplicationOpenURLOptionsSourceApplicationKey]
                                      annotation:options[UIApplicationOpenURLOptionsAnnotationKey]];
}

- (void)signIn:(GIDSignIn *)signIn
didSignInForUser:(GIDGoogleUser *)user
     withError:(NSError *)error
{
    NSAssert(signIn, @"");
    NSAssert(user, @"");
    NSAssert(!error, @"");
    
    if (!error)
    {
        [[NSNotificationCenter defaultCenter]
         postNotificationName:@"ToggleAuthUINotification"
         object:nil
         userInfo:@{@"signIn" : signIn,
                    @"user"   : user
                    }];
    }
}
    
- (void)signIn:(GIDSignIn *)signIn
didDisconnectWithUser:(GIDGoogleUser *)user
     withError:(NSError *)error
{
    NSAssert(signIn, @"");
    NSAssert(user, @"");
    NSAssert(!error, @"");
    
    NSAssert(false, @"");
    
    if (!error)
    {
        [[NSNotificationCenter defaultCenter]
         postNotificationName:@"ToggleSignOutNotification"
         object:nil
         userInfo:@{@"signIn" : signIn,
                      @"user" : user
                    }];
    }
}

@end
