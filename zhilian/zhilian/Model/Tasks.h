//
//  Tasks.h
//  zhishan
//
//  Created by keyong li on 15/12/3.
//  Copyright © 2015年 keyong li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"
#import "People.h"
#import "Form.h"
#import "TaskItem.h"
#import <EasyIOS/EasyIOS.h>
@interface Tasks : Model{
    NSInteger taskId;//id
    NSInteger people_id;//巡查对象
    NSString * grid_id;//网格
    NSInteger form_id;//biaodan
    NSString *taskName;
    NSInteger group_id;
    NSString *content;//内容
    NSInteger type_id;
    NSString * user_id;//巡查人员id
    NSInteger status;//接收、开始、完成、关闭
    NSInteger task_level;//
    NSInteger end_at;//截至时间
    NSInteger done_at;//完成时间
    NSInteger create_at;//任务创建时间
    NSString * create_id;//创建人id
    NSString *create_name;//创建人名字
    NSInteger readStatus;//阅读状态 1、未读 0、已读
    NSString * receiveUserID;
    NSInteger task_type;//任务类型
    NSString *group_name;
    NSString *taskorder;
    double truelng;
    double truelat;
    double alt;
    NSString *address;
    NSString *reason;//上次任务的整改时间
    NSString *rectify_season;//复查原因
    NSInteger changeTime;//用于排序
    NSString * assist_user_id;//辅巡查人id
    NSString *assist_user_names;//辅巡查人名称
    NSString *task_submit_history;//任务提交人id记录
    NSInteger examine_stats;//审批状态
    NSInteger isMine_sumbit;//判断当前登录用户是否提交表单，提交之后不显示该任务
    NSInteger isAssist;//判断是否是辅巡查人
    NSString *remark;
    NSInteger submit_status;//提交状态
    NSString *grid_name;//网格名称
    NSInteger object_id;
    NSInteger object_type;//
    NSString *people_name;//走访人姓名
     Form *form;
    People *people;
    NSMutableArray *taskItemList;
    NSMutableArray *attachmentSignTrueList;
    NSInteger plan_id;//计划id
    NSInteger task_handle;//处理状态
    
    float cell_height;
}
@property NSInteger taskId;//id
@property NSInteger people_id;
@property (nonatomic,copy) NSString * grid_id;//网格
@property NSInteger form_id;
@property(nonatomic,copy) NSString *taskName;
@property NSInteger group_id;
@property (nonatomic,copy) NSString *content;//内容
@property NSInteger type_id;
@property NSString * user_id;
@property NSInteger status;//
@property NSInteger task_level;//
@property NSInteger end_at;
@property NSInteger done_at;
@property NSInteger create_at;
@property NSString * create_id;
@property(nonatomic,copy) NSString *create_name;
@property NSInteger readStatus;
@property (nonatomic,copy)NSString * receiveUserID;
@property NSInteger task_type;
@property(nonatomic,copy) NSString *group_name;
@property(nonatomic,copy) NSString *taskorder;
@property double truelng;
@property double truelat;
@property double alt;
@property(nonatomic,copy) NSString *address;
@property (nonatomic,copy) NSString *reason;
@property(nonatomic,copy) NSString *rectify_season;
@property NSInteger changeTime;
@property (nonatomic,copy)NSString * assist_user_id;
@property(nonatomic,copy) NSString *assist_user_names;
@property(nonatomic,copy) NSString *task_submit_history;
@property NSInteger examine_stats;
@property NSInteger isMine_sumbit;
@property NSInteger isAssist;
@property(nonatomic,copy) NSString *remark;
@property NSInteger submit_status;
@property (nonatomic,copy)NSString *grid_name;//网格名称
@property NSInteger object_id;
@property NSInteger object_type;//
@property (nonatomic,copy) NSString *people_name;//

@property (nonatomic,strong) Form *form;
@property (nonatomic,strong) People *people;
@property (nonatomic,strong)  NSMutableArray *taskItemList;
@property (nonatomic,strong) NSMutableArray *attachmentSignTrueList;
@property NSInteger plan_id;
@property NSInteger task_handle;
@property     float cell_height;
@end
