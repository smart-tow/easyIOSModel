//
//  TaskItem.m
//  zhishan
//
//  Created by keyong li on 15/12/7.
//  Copyright © 2015年 keyong li. All rights reserved.
//

#import "TaskItem.h"

@implementation TaskItem
@synthesize task_id,task_item_id,question,answer,classify_id,tag,create_at,final_result,is_rectify,question_type,des,local_id,item_id,done_at,is_field_treatment,options,status;
@synthesize attachmenList;
-(id)init
{
    self = [super init];
    question = @"";
    answer = @"";
    des = @"";
    final_result = @"";
    options = @"";
    return self;
}
@end
