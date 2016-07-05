//
//  BlogComment.m
//  zhishan
//
//  Created by keyong li on 16/5/19.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import "BlogComment.h"

@implementation BlogComment
@synthesize comment_id,content,user_id,create_at,blog_id,receive_user,cell_height;;
-(id)init
{
    self=[super init];
    cell_height=0;
    return self;
}
@end
