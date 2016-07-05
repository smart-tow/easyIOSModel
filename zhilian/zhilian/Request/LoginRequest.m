//
//  LoginRequest.m
//  zhilian
//
//  Created by keyong li on 16/6/21.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import "LoginRequest.h"
#import "UserCenter.h"
@implementation LoginRequest
-(void)loadRequest{
    [super loadRequest];
    self.PATH = @"/2/account/login";
    self.METHOD = @"POST";
     
}
@end
