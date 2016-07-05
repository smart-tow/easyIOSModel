//
//  BaseRequest.m
//  zhilian
//
//  Created by keyong li on 16/6/21.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import "BaseRequest.h"

@implementation BaseRequest
-(void)loadRequest{
    [super loadRequest];
    
    self.output = nil;
    self.message = @"";
    self.progress = nil;
    self.freezable = NO;
    self.SCHEME = @"";
    self.HOST = @"";//@"http://api.zsdy.csgrid.cn";
    self.PATH = @"";
    self.METHOD = @"GET";
    self.needCheckCode = YES;
    self.params = [NSMutableDictionary dictionary];
    self.isFirstRequest = YES;
  self.mobile_version = @"1";
    
}
@end
