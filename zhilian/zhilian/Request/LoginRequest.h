//
//  LoginRequest.h
//  zhilian
//
//  Created by keyong li on 16/6/21.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import "BaseRequest.h"

@interface LoginRequest : BaseRequest
@property(nonatomic,strong) NSString *account;
@property(nonatomic,strong) NSString *password;
@property(nonatomic,strong) NSString *mobile_version;
@end
