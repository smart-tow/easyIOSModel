//
//  GroupMembers.h
//  FlyoxSJ
//
//  Created by zhao chunqiu on 13-11-11.
//  Copyright (c) 2013年 zhao chunqiu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <EasyIOS/EasyIOS.h>
@interface GroupMembers : Model{
    NSInteger userid;//用户id
    NSString *username;//用户名
    NSString *sex; //性别
    NSInteger created_at;//创建时间
    NSInteger user_type;//用户类型
    NSString *userTypeName;//用户类型名称
    NSString *remarks;//备注
    NSString *phone;//手机
    NSString *tel;//电话
    NSString *path;//头像本地路径
    NSString *webpath;//头像网络路径
    NSString *province;//省份
    NSString *city;//城市
    NSInteger birthday;//生日
    NSString *email;//邮箱
    NSString *position;//岗位
    NSString *address;//地址
    NSString *groupid;//群组id
    NSString *groupName;//群组名
    NSInteger since_at;//更新时间
    NSInteger statuses;//禁用/启用状态
    
    //地图用户列表添加字段
    NSInteger online_status;//用户状态
    double truelat;
    double truelng;
    double elevation;
    NSString *location;//位置中文
    
    NSInteger isVisible;//本地字段-是否我可见的用户（下属）1可见 0不可见
}
@property NSInteger sectionNumber;
@property NSInteger recordID;
@property BOOL rowSelected;

@property NSInteger userid;
@property (nonatomic,copy)NSString *username;
@property (nonatomic,copy)NSString *sex;
@property NSInteger created_at;
@property NSInteger user_type;
@property (nonatomic,copy)NSString *userTypeName;
@property (nonatomic,copy)NSString *remarks;
@property (nonatomic,copy)NSString *phone;
@property (nonatomic,copy)NSString *tel;
@property (nonatomic,copy)NSString *path;
@property (nonatomic,copy)NSString *webpath;
@property (nonatomic,copy)NSString *province;
@property (nonatomic,copy)NSString *city;
@property NSInteger birthday;
@property (nonatomic,copy)NSString *email;
@property (nonatomic,copy)NSString *position;
@property (nonatomic,copy)NSString *address;
@property (nonatomic,copy)NSString *groupid;
@property (nonatomic,copy)NSString *groupName;
@property NSInteger since_at;
@property NSInteger statuses;
@property NSInteger online_status;

@property double truelat;
@property double truelng;
@property double elevation;
@property (nonatomic,copy) NSString *location;//位置中文
@property NSInteger isVisible;
@end