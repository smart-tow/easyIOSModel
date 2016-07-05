//
//  LoginViewController.m
//  zhilian
//
//  Created by keyong li on 16/6/20.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginRequest.h"
#import "UserInfo.h"
#import "LoginSceneModel.h"
#import "UserCenter.h"
@interface LoginViewController ()
@property (nonatomic,strong) UITextField *user_name_field;
@property (nonatomic,strong) UITextField *password_field;
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self.navigationController setNavigationBarHidden:YES];//隐藏
    
    UIView *scene_view = [[UIView alloc] init];
    [scene_view setBackgroundColor:[UIColor colorWithString:@"#8a2323"]];
    [self.view addSubview:scene_view];
    
    UIImageView *logo_image = [[UIImageView alloc] init];
    [logo_image setImage:[UIImage imageNamed:@"logo_h.png"]];
    [scene_view addSubview:logo_image];
    
    UILabel *scene_label = [[UILabel alloc] init];
    [scene_label setText:@"开启智慧新模式"];
    [scene_label setTextAlignment:NSTextAlignmentRight];
    [scene_label setTextColor:[UIColor whiteColor]];
    [scene_label setFont:[UIFont systemFontOfSize:24]];
    [scene_view addSubview:scene_label];
    
    
    UILabel *user_name_label = [[UILabel alloc] init];
    user_name_label.text = @"用户名";
 
    [self.view addSubview:user_name_label];//先添加视图 然后在设置约束
    
     _user_name_field = [[UITextField alloc] init];
    _user_name_field.placeholder = @"请输入账号";
    _user_name_field.text = @"18888888888";
    [_user_name_field setBorderStyle:UITextBorderStyleRoundedRect];
    [self.view addSubview:_user_name_field];
    
    UILabel *password_label = [[UILabel alloc] init];
    [password_label setContentMode:UIViewContentModeScaleAspectFill];
    password_label.text = @"密    码";
    [self.view addSubview:password_label];//先添加视图 然后在设置约束
    
     _password_field = [[UITextField alloc] init];
    _password_field.placeholder = @"请输入密码";
    _password_field.text = @"111111";
    [_password_field setSecureTextEntry:YES];
    [_password_field setBorderStyle:UITextBorderStyleRoundedRect];
    [self.view addSubview:_password_field];
    
    UIButton *login_btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [login_btn setTitle:@"登录" forState:UIControlStateNormal];
    login_btn.titleLabel.textColor = [UIColor whiteColor];
    [login_btn setBackgroundColor:[UIColor colorWithString:@"#8a2323"]];
    [login_btn addTarget:self action:@selector(goLogin) forControlEvents:UIControlEventTouchDown];//添加点击事件
    [self.view addSubview:login_btn];
    
    [scene_view alignTop:@"20" leading:@"0" bottom:nil trailing:@"0" toView:scene_view.superview];
    [scene_view constrainHeight:@"128"];
    
    [logo_image alignTop:@"23" leading:@"23" bottom:nil trailing:nil toView:scene_view];
    [logo_image constrainHeight:@"47"];
    [logo_image constrainWidth:@"145"];
    
    [scene_label alignTop:@"78" leading:@"10" bottom:nil trailing:@"-10" toView:scene_label.superview];
    [scene_label constrainHeight:@"42"];
    
  
    //设置用户名label约束
    [user_name_label constrainTopSpaceToView:scene_view predicate:@"10"];//设置top约束

    [user_name_label alignLeadingEdgeWithView:scene_view predicate:@"10"];//设置右侧约束
 
    [user_name_label constrainWidth:@"60" height:@"21"];//设置宽高
 
    //设置用户名文本框约束
    [_user_name_field constrainHeight:@"30"];//设置高度
    [_user_name_field constrainTopSpaceToView:scene_view predicate:@"6"];
    [_user_name_field alignTrailingEdgeWithView:scene_view predicate:@"-10"];
    //设置左
    [_user_name_field constrainLeadingSpaceToView:user_name_label predicate:@"5"];
    //设置密码label
    
    [password_label alignLeadingEdgeWithView:user_name_label predicate:@"0"];
 
    [password_label constrainTopSpaceToView:user_name_label predicate:@"19"];//上10
    [password_label constrainHeight:@"21"];
    [password_label alignTrailingEdgeWithView:user_name_label predicate:@"0"];
//    [password_label constrainWidth:[NSNumber numberWithFloat:user_name_label.width].objectToString height:@"21"];//设置宽高
 
    
    //设置密码框
    [_password_field constrainHeight:@"30"];//设置高度
        //设置左
    [_password_field constrainLeadingSpaceToView:password_label predicate:@"5"];
    [_password_field constrainTopSpaceToView:_user_name_field predicate:@"10"];
    [_password_field alignTrailingEdgeWithView:_password_field.superview predicate:@"-10"];
    
    [login_btn constrainTopSpaceToView:password_label predicate:@"20"];
 
    [login_btn alignLeadingEdgeWithView:password_label predicate:@"0"];
    [login_btn alignTrailingEdgeWithView:login_btn.superview predicate:@"-10"];
    [login_btn constrainHeight:@"35"];
    [self loadHudInKeyWindow];
}

-(void)goLogin{
    [self hideHudFailed:@"222"];
    if(_user_name_field.text.length==0){
       [[DialogUtil sharedInstance] showDlg:self.view textOnly:@"账号不能为空"];
        return;
    }else if (_password_field.text.length==0){
        [[DialogUtil sharedInstance] showDlg:self.view textOnly:@"密码不能为空"];
        return;
    }
    
 
    LoginRequest * loginRequest = [LoginRequest Request];
    loginRequest.account = _user_name_field.text;
    loginRequest.password = _password_field.text;
    [self showHudIndeterminate:@"登录中..."];
 
    [[LoginSceneModel  sharedInstance] sendRequest:loginRequest success:^{
        [self hideHud];
        NSLog(@"%@",[loginRequest.output objectForKey:@"data"]);
        UserInfo *user = [[UserInfo alloc] initWithDictionary:[loginRequest.output objectForKey:@"data"] error:nil];
        NSLog(@"   ====   %@",user);
//        [[NSUserDefaults standardUserDefaults] setObject:user forKey:@"user"];

        [user save];
        [UserCenter sharedInstance].user = user;
        [UserCenter sharedInstance].token = user.token;
        [self dismissViewControllerAnimated:YES completion:nil];
    } error:^{
       
        [self hideHudFailed:loginRequest.message];
    }];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}


@end
