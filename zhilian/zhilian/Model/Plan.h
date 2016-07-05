//
//  Plan.h
//  zhishan
//
//  Created by keyong li on 16/2/23.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <EasyIOS/EasyIOS.h>
@interface Plan : Model{
    NSInteger plan_id;
    NSString *name;//计划名称
    NSString *content;//内容
    NSInteger begin_at;//开始时间
    NSInteger end_at;//结束时间
    NSInteger group_id;//发起部门
    NSString *forms;//表单id，多个‘，’分开
    NSString *industrys;//查询行业多个'，'分开
    NSString *grid_id;//创建网格id
    NSString *pid;//创建计划的上级网格
    NSString *field;//创建计划网格特征串
    NSString *excute_grids;//执行计划的网格多个‘，’分开
    NSString *user_id;//创建计划人
    NSInteger created_at;//创建时间
    NSInteger status;//状态
    NSInteger is_push;//是否下发 1已下发
    NSInteger push_time;//下发时间
    NSInteger last_modify_at;//修改时间
    NSMutableArray *attachmentList;
    NSInteger plan_type;//计划类型
}
@property NSInteger plan_id;
@property (nonatomic,copy) NSString *name;//计划名称
@property(nonatomic,copy) NSString *content;//内容
@property NSInteger begin_at;//开始时间
@property NSInteger end_at;//结束时间
@property NSInteger group_id;//发起部门
@property(nonatomic,copy) NSString *forms;//表单id，多个‘，’分开
@property(nonatomic,copy) NSString *industrys;//查询行业多个'，'分开
@property (nonatomic,copy) NSString *grid_id;//创建网格id
 @property(nonatomic,copy) NSString *pid;//创建计划的上级网格
@property(nonatomic,copy) NSString *field;//创建计划网格特征串
@property(nonatomic,copy) NSString *excute_grids;//执行计划的网格多个‘，’分开
@property(nonatomic,copy) NSString *user_id;//创建计划人
@property NSInteger created_at;//创建时间
@property NSInteger status;//状态
@property NSInteger is_push;//是否下发 1已下发
@property NSInteger push_time;//下发时间
@property NSInteger last_modify_at;//修改时间
@property (nonatomic,strong)NSMutableArray *attachmentList;
@property NSInteger plan_type;//

@end
