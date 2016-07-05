//
//  Blog.h
//  zhishan
//
//  Created by MinG on 16/5/11.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import <EasyIOS/EasyIOS.h>

@interface Blog : Model
{
    NSString *title;
    NSString *content;
    NSInteger type;//类型 1、普通报告 2、朋友圈 3、无纸化办公 4、新闻资讯
    NSString *receive_users;//	接收人 多个用,分开
    NSInteger is_plan;//计划报告 1、否 2、是
    NSInteger attachment_type;//附件上传类型(4:多附件上传)
    NSInteger store_type;//存储方式(1：本地服务器)
    NSInteger plan_id;//计划id
    NSInteger blog_id;//blogid
    NSInteger created_at;
    NSString *longitude;//经度 服务器long
    NSString *lat;//维度
    NSString *address;//
    NSInteger com_num;//评论数目
    NSString * grid_id;//网格id
    
    NSMutableArray *attachmenList;
    float cell_height;
    NSString *user_id;
    NSInteger update_at;//最后修改时间
    
}
@property(nonatomic,strong) NSMutableArray *attachmenList;
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *content;
@property NSInteger type;//类型 1、普通报告 2、朋友圈 3、无纸化办公 4、新闻资讯
@property(nonatomic,copy)NSString *receive_users;//	接收人 多个用,分开
@property NSInteger is_plan;//计划报告 1、否 2、是

@property NSInteger plan_id;//计划id
@property NSInteger blog_id;//blogid
@property NSInteger created_at;
@property(nonatomic,copy) NSString *longitude;//经度 服务器long
@property(nonatomic,copy) NSString *lat;//维度
@property(nonatomic,copy) NSString *address;
@property NSInteger com_num;//评论数目
@property (nonatomic,copy)NSString * grid_id;//网格id
@property float cell_height;
@property NSInteger attachment_type;//附件上传类型(4:多附件上传)
@property NSInteger store_type;//存储方式(1：本地服务器)
@property (nonatomic,copy)    NSString *user_id;
@property  NSInteger update_at;//最后修改时间
@end
