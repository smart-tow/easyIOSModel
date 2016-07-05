//
//  UserCenter.m
//  rssreader
//
//  Created by zhuchao on 15/2/7.
//  Copyright (c) 2015年 zhuchao. All rights reserved.
//

#import "UserCenter.h"
#import "const.h"
@implementation UserCenter
DEF_SINGLETON(UserCenter)

-(instancetype)init{
    self = [super init];
    self.source = @"d890fd5rr76a03901f09152a63aee8e4";
    if(self){
//        self.token = @"123456";
    
    }
    return self;
}
@end
