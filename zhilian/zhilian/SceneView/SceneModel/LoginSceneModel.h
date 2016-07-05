//
//  LoginSceneModel.h
//  zhilian
//
//  Created by keyong li on 16/6/21.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import <EasyIOS/EasyIOS.h>
#import "UserInfo.h"
#import "LoginRequest.h"
@interface LoginSceneModel : SceneModel

+ (LoginSceneModel *)sharedInstance;
-(void)sendRequest:(Request *)req
           success:(void (^)())successHandler
             error:(void (^)())errorHandler;

@property(nonatomic,retain)UserInfo *userData;
@property(nonatomic,retain)LoginRequest *request;
@end
