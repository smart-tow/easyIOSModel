//
//  Problem
//  zhishan
//
//  Created by keyong li on 16/1/4.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <EasyIOS/EasyIOS.h>
@interface Problem : Model
{
    NSInteger problem_id;
    NSString *problem;//待处理问题
    NSString *des;//处理要求
    NSString *assign_user_id;//分派人
    NSString *user_id;//问题处理人
    NSInteger assign_at;//分派时间
    NSInteger done_at;//截止时间
    NSInteger sign_at;//签到时间
    NSInteger exe_at;//执行时间
    NSInteger review_status;//审批状态
    NSString *review_evidence;//审核依据
    NSString *review_user_id;//审批人
    NSInteger review_at;//审批时间
    NSString *reject_reason;//驳回理由
    NSString *last_reject_reason;//最后一次驳回原因
    NSInteger status;//状态
    NSInteger task_id;//任务id
    NSInteger task_item_id;//任务表单id
    NSString *grid_id;//网格
    NSInteger people_id;//走人对象
    NSInteger group_id;//
    NSString *reason;//驳回原因
    NSString *handle_result;//处理结果
    NSMutableArray *attachmentList;
    NSInteger plan_id;
    NSMutableArray *attachSign;
}

@property NSInteger problem_id;
@property (nonatomic,copy) NSString *problem;//待处理问题
@property (nonatomic,copy)NSString *des;//处理要求
@property (nonatomic,copy)NSString *assign_user_id;//分派人
@property (nonatomic,copy)NSString *user_id;//问题处理人
@property NSInteger assign_at;//分派时间
@property NSInteger done_at;//截止时间
@property NSInteger sign_at;//签到时间
@property NSInteger exe_at;//执行时间
@property NSInteger review_status;//审批状态
@property (nonatomic,copy)NSString *review_evidence;//审核依据
@property (nonatomic,copy)NSString *review_user_id;//审批人
@property NSInteger review_at;//审批时间
@property (nonatomic,copy)NSString *reject_reason;//驳回理由
@property (nonatomic,copy)NSString *last_reject_reason;//最后一次驳回原因
@property NSInteger status;//状态
@property NSInteger task_id;//任务id
@property NSInteger task_item_id;//任务表单id
@property (nonatomic,copy)NSString *grid_id;//网格
@property NSInteger people_id;//走人对象
@property NSInteger group_id;//
@property (nonatomic,copy)NSString *reason;//驳回原因
@property (nonatomic,copy)NSString *handle_result;//处理结果
@property(nonatomic,strong)NSMutableArray *attachmentList;
@property NSInteger plan_id;
@property (nonatomic,strong) NSMutableArray *attachSign;
@end
