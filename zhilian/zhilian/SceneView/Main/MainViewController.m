//
//  MainViewController.m
//  zhilian
//
//  Created by keyong li on 16/6/20.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import "MainViewController.h"
#import "LoginViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"直联";
    UIButton *rssbutton = [IconFont buttonWithIcon:[IconFont icon:@"fa_home" fromFont:fontAwesome] fontName:fontAwesome size:24.0f color:[UIColor whiteColor]];
    [self showBarButton:NAV_RIGHT button:rssbutton];
    [rssbutton addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchDown];
}

-(void)login{
    LoginViewController *login = [[LoginViewController alloc] init];
    [self presentViewController:login animated:YES completion:nil];
//    [URLNavigation pushViewController:login animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}


@end
