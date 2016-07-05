//
//  Group.h
//  FlyoxSJ
//
//  Created by zhao chunqiu on 13-11-11.
//  Copyright (c) 2013年 zhao chunqiu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <EasyIOS/EasyIOS.h>
@interface Group : Model{
    NSInteger group_id;
    NSString * userid;
    NSInteger user_type;
    NSString *user_type_name;
    NSInteger members_count;
    NSInteger created_at;
    NSInteger change_at;
    NSInteger member_type;
    NSString *groupName;
    NSInteger parent_id;
    NSInteger group_type;
}
@property NSInteger group_id;
@property (nonatomic,copy)NSString * userid;
@property NSInteger user_type;
@property(nonatomic,copy)NSString *user_type_name;
@property NSInteger members_count;
@property NSInteger created_at;
@property NSInteger change_at;
@property NSInteger member_type;
@property(nonatomic,copy)NSString *groupName;
@property NSInteger parent_id;
@property NSInteger group_type;
@end
