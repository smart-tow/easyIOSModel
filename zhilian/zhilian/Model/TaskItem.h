//
//  TaskItem.h
//  zhishan
//
//  Created by keyong li on 15/12/7.
//  Copyright © 2015年 keyong li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <EasyIOS/EasyIOS.h>
@interface TaskItem : Model{
    NSInteger task_item_id;
    NSInteger task_id;//任务id
    NSString *question;//问题
    NSString *answer;//答案
    NSInteger classify_id;//走访类型
    NSString *des;//m描述
    NSInteger tag;//题目类型 1：问答 2：选择
    NSInteger create_at;//创建时间
    NSString *final_result;//最终结果
    NSInteger is_rectify;//是否发现问题 1：否 2：是
    NSInteger question_type;//问题类型 1：获取的问题 2:手动添加的问题
    NSString *local_id;//本地id
    NSInteger item_id;
    NSMutableArray *attachmenList;
    NSInteger done_at;
    NSInteger is_field_treatment;
    NSString *options;//选择题选项
    NSInteger status;//2该表单项问题已处理
}

@property NSInteger task_item_id;
@property NSInteger task_id;//任务id
@property (nonatomic,copy) NSString *question;//问题
@property  (nonatomic,copy) NSString *answer;//答案
@property  (nonatomic,copy) NSString *options;
@property  NSInteger classify_id;//走访类型
@property (nonatomic,copy) NSString *des;//m描述
@property NSInteger tag;//题目类型 1：问答 2：选择
@property NSInteger create_at;//创建时间
@property (nonatomic,copy) NSString *final_result;//最终结果
@property NSInteger is_rectify;//是否发现问题 1：否 2：是
@property NSInteger question_type;//问题类型 1：获取的问题 2:手动添加的问题
@property (nonatomic,copy)NSString *local_id;//本地id
@property NSInteger item_id;
@property(nonatomic,strong)NSMutableArray *attachmenList;
@property NSInteger done_at;
@property NSInteger is_field_treatment;
@property NSInteger status;
@end
