//
//  AppDelegate.h
//  keep4u-IOS
//
//  Created by Дюмин Алексей on 25/10/2018.
//  Copyright © 2018 TeamUUUU. All rights reserved.
//

#import <UIKit/UIKit.h>

@import GoogleSignIn;

@interface AppDelegate : UIResponder <UIApplicationDelegate, GIDSignInDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

