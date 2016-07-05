//
//  LoginSceneModel.m
//  zhilian
//
//  Created by keyong li on 16/6/21.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import "LoginSceneModel.h"
#import "UserCenter.h"

@implementation LoginSceneModel

+ (LoginSceneModel *)sharedInstance{
    GCDSharedInstance(^{ return [self SceneModel]; });
}

-(void)sendRequest:(Request *)req
           success:(void (^)())successHandler
             error:(void (^)())errorHandler{
    [RACObserve(req, state) //监控 网络请求的状态
     subscribeNext:^(NSNumber *state) {
         if(req.succeed && successHandler){
             successHandler();
         }else if (req.failed && errorHandler){
             errorHandler();
         }
     }];
    [self SEND_NO_CACHE_ACTION:req];
}
@end
