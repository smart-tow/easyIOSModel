//
//  BaseSceneViewController.m
//  zhilian
//
//  Created by keyong li on 16/6/20.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import "BaseSceneViewController.h"

@interface BaseSceneViewController ()

@end

@implementation BaseSceneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController.navigationBar setBackgroundColor:[UIColor colorWithString:@"#8a2323"]];
//    [self.navigationController.navigationBar setBarStyle:UIBarStyleBlackOpaque];
    self.navigationController.navigationBar.barTintColor =[UIColor colorWithString:@"#8a2323"];
    self.navigationController.navigationBar.tintColor =[UIColor whiteColor];

    
//    navView.backgroundColor = [Untils hexStringToColor:@"8a2323"];//[Untils hexStringToColor:@"4f91d3"];
    
//    self.navigationController.navigationBar.backItem.backBarButtonItem.tintColor = [UIColor whiteColor];
    
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
//    self.navigationController.navigationBar.translucent = NO;
    //设置view底色
self.view.backgroundColor = [UIColor colorWithString:@"#f1f1f1"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
