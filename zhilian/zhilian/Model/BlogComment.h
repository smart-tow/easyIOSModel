//
//  BlogComment.h
//  zhishan
//
//  Created by keyong li on 16/5/19.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import <EasyIOS/EasyIOS.h>

@interface BlogComment : Model{
    NSInteger comment_id;//id
    NSString *content;//内容
    NSString *user_id;//发布人
    NSString *receive_user;//接收人
    NSInteger blog_id;
    NSInteger create_at;//
    float cell_height;
}

@property NSInteger comment_id;//id
@property (nonatomic,copy) NSString *content;//内容
@property (nonatomic,copy) NSString *user_id;//发布人
@property (nonatomic,copy) NSString *receive_user;//接收人
@property NSInteger blog_id;
@property NSInteger create_at;//
@property float cell_height;
@end
