//
//  CheckItem.h
//  zhishan
//
//  Created by MinG on 16/5/23.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import <EasyIOS/EasyIOS.h>
@class Group;
@interface CheckItem : Model
//cell_height
@property(nonatomic,assign)float cell_height;
@property(nonatomic,strong)NSString *q;
@property(nonatomic,strong)NSString *show_items;//items
@property(nonatomic,strong)NSString *content;//考核内容
@property(nonatomic,strong)NSString *assign_users;//分管领导
@property(nonatomic,strong)NSString *group_ids;
@property(nonatomic,assign)NSInteger end_at;
@property(nonatomic,assign)NSInteger check_id;
@property(nonatomic,assign)NSInteger type;//	小分类id
@property(nonatomic,assign)NSInteger big_Type;//3	大分类id
@property(nonatomic,strong)NSString *name;//big_Type{name:""}
@property(nonatomic,strong)NSString *require_at;//上报要求
@property(nonatomic,assign)NSInteger check_item_id;//考核项目id
@property(nonatomic,strong)NSString *bigTypeName;
//最后上报数据
@property(nonatomic,strong)NSString *contentRequire;
@property(nonatomic,assign)NSInteger  require_id;
@property(nonatomic,assign)NSInteger creat_at;
@property(nonatomic,strong)NSString *user_id;
@property(nonatomic,strong)NSString *real_name;
@property(nonatomic,strong)NSString *group_name;
@property(nonatomic,strong) Group *check_group;
@property(nonatomic,strong) NSMutableArray *check_groupArr;
@property(nonatomic,strong) NSMutableArray *check_NameArr;
@property(nonatomic,strong) NSMutableArray *RequireArr;
@end
