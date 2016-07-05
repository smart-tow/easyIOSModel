//
//  AppDelegate.h
//  zhilian
//
//  Created by keyong li on 16/6/20.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDatabase.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    
    UINavigationController *navController;
    
    NSString *remindPageType;
    NSInteger ProfileType; //证书状态 1：测试证书 2：发布证书
    NSInteger login_at;//登录时间
}
@property(strong,nonatomic)AppDatabase *database;
@property (nonatomic,copy)NSString *remindPageType;
@property NSInteger ProfileType; //证书状态 1：测试证书 2：发布证书
@property NSInteger login_at;//登录时间
@property (strong, nonatomic) UIWindow *window;


@end

