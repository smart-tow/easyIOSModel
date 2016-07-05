//
//  Peoblem.m
//  zhishan
//
//  Created by keyong li on 16/1/4.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import "Problem.h"

@implementation Problem
@synthesize problem_id,problem,des,assign_user_id,user_id,assign_at,done_at,sign_at,status,exe_at,reason,reject_reason,review_at,review_evidence,review_status,review_user_id,last_reject_reason,task_id,task_item_id,grid_id,group_id,handle_result,people_id,attachmentList,plan_id;
@synthesize attachSign;

-(void)setValue:(id)value forKey:(NSString *)key{
    if([key isEqualToString:@"problem_id"]){
//        self.people_id = 
    }
}

@end
