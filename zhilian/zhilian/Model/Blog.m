//
//  Blog.m
//  zhishan
//
//  Created by MinG on 16/5/11.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import "Blog.h"

@implementation Blog
@synthesize plan_id;
@synthesize is_plan,content,type,title,receive_users,attachmenList,blog_id,created_at,longitude,lat,address,com_num,grid_id,cell_height,attachment_type,store_type,user_id,update_at;

-(id)init
{
    self=[super init];
    attachmenList = [NSMutableArray array];
    cell_height=0;
    return self;
}
@end
