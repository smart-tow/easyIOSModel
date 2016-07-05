//
//  Tasks.m
//  zhishan
//
//  Created by keyong li on 15/12/3.
//  Copyright © 2015年 keyong li. All rights reserved.
//

#import "Tasks.h"

@implementation Tasks
@synthesize taskId,people_id,grid_id,form_id,taskName,group_id,group_name,content,task_level,task_submit_history,task_type,taskorder,user_id,end_at,done_at,changeTime,create_at,create_id,create_name,isAssist,isMine_sumbit,readStatus,reason,receiveUserID,rectify_season,remark,truelat,truelng,type_id,address,alt,assist_user_id,assist_user_names,examine_stats,status,submit_status,grid_name,object_id,object_type,people_name,plan_id,task_handle;
@synthesize form,people,taskItemList,attachmentSignTrueList,cell_height;

-(id)init{
    self=[super init];
    taskName = @"";
    remark = @"";
    group_name = @"";

    return  self;
}
@end
