//
//  ViewController.m
//  zhilian
//
//  Created by keyong li on 16/6/20.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import "ViewController.h"
#import "BaseNavigationViewController.h"
#import "MainViewController.h"
#import "FriendsViewController.h"
#import "NewsViewController.h"
#import "DailyViewController.h"
#import "MoreViewController.h"
#import <XAspect/XAspect.h>
@interface ViewController ()<UITabBarControllerDelegate>
@property(nonatomic,retain)BaseNavigationViewController * mainNavController;//直联
@property(nonatomic,retain)BaseNavigationViewController * friendsNavController;//朋友圈
@property(nonatomic,retain)BaseNavigationViewController * newsNavController;//新闻资讯
@property(nonatomic,retain)BaseNavigationViewController * dailyNavController;//日常
@property(nonatomic,retain)BaseNavigationViewController * moreNavController;//更多
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _mainNavController = [[BaseNavigationViewController alloc] initWithRootViewController:[[MainViewController alloc] init]];
    
    _friendsNavController = [[BaseNavigationViewController alloc] initWithRootViewController:[[FriendsViewController alloc] init]];
    
    _newsNavController = [[BaseNavigationViewController alloc] initWithRootViewController:[[NewsViewController alloc] init]];
    _dailyNavController = [[BaseNavigationViewController alloc] initWithRootViewController:[[DailyViewController alloc] init]];
    _moreNavController = [[BaseNavigationViewController alloc] initWithRootViewController:[[MoreViewController alloc] init]];
    
    self.viewControllers = [NSArray arrayWithObjects:_mainNavController,_friendsNavController,_newsNavController,_dailyNavController,_moreNavController,nil];
    
    [_mainNavController.tabBarItem setTitle:@"直联"];
    [_mainNavController.tabBarItem setImage:
     [IconFont imageWithIcon:[IconFont icon:@"ios7Home" fromFont:ionIcons]
                    fontName:ionIcons iconColor:[UIColor whiteColor] iconSize:25]];
    
    [_friendsNavController.tabBarItem setTitle:@"朋友圈"];
    [_friendsNavController.tabBarItem setImage:
     [IconFont imageWithIcon:[IconFont icon:@"ios7Home" fromFont:ionIcons]
                    fontName:ionIcons iconColor:[UIColor whiteColor] iconSize:25]];
    
    [_newsNavController.tabBarItem setTitle:@"新闻资讯"];
    [_newsNavController.tabBarItem setImage:
     [IconFont imageWithIcon:[IconFont icon:@"ios7Home" fromFont:ionIcons]
                    fontName:ionIcons iconColor:[UIColor whiteColor] iconSize:25]];
    
    [_dailyNavController.tabBarItem setTitle:@"日常"];
    [_dailyNavController.tabBarItem setImage:
     [IconFont imageWithIcon:[IconFont icon:@"ios7Wineglass" fromFont:ionIcons]
                    fontName:ionIcons iconColor:[UIColor whiteColor] iconSize:25]];
    
    [_moreNavController.tabBarItem setTitle:@"更多"];
    [_moreNavController.tabBarItem setImage:
     [IconFont imageWithIcon:[IconFont icon:@"ios7WorldOutline" fromFont:ionIcons]
                    fontName:ionIcons iconColor:[UIColor whiteColor] iconSize:25]];
    
    self.delegate = self;
    
    
//    self.tabBarController.tabBar.backgroundColor=[UIColor blackColor];
//    self.tabBarController.tabBar.tintColor=[UIColor blackColor];
//    self.tabBarController.tabBar.barTintColor =[UIColor blackColor];
    [self.tabBar setBarStyle:UIBarStyleBlackOpaque];
  
    
    self.tabBar.selectedImageTintColor = [UIColor redColor];
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
