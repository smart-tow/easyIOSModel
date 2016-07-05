//
//  Attachment.h
//  zhishan
//
//  Created by keyong li on 15/12/10.
//  Copyright © 2015年 keyong li. All rights reserved.
//

#import <EasyIOS/EasyIOS.h>
#import "const.h"
@interface Attachment : Model{
    NSInteger attachment_id;
    NSInteger task_id;
    NSInteger item_id;
    NSString *attachment_path;
    NSString *path;
    NSInteger attachment_type;
    NSString *annotations;
    NSInteger created_at;
    NSInteger task_item_id;
    NSString *task_item_local_id;//本地任务表单项id
    
    
    AccessoryType accessoryType;	//附件类型，
    NSUInteger accessorySize;		//附件的大小
    NSString *accessoryName;		//如果附件是文件，它的名字
    NSString *accessoryUrlPath;
    NSData *accessoryData;
}
@property NSInteger attachment_id;
@property NSInteger task_id;
@property NSInteger item_id;
@property (nonatomic,copy)NSString *attachment_path;
@property (nonatomic,copy) NSString *path;
@property NSInteger attachment_type;
@property (nonatomic,copy) NSString *annotations;
@property NSInteger created_at;
@property NSInteger task_item_id;
@property (nonatomic,copy)NSString *task_item_local_id;

@property AccessoryType accessoryType;
@property NSUInteger accessorySize;
@property (nonatomic, copy) NSString *accessoryName;
@property (nonatomic, copy) NSString *accessoryUrlPath;
@property (nonatomic, retain) NSData *accessoryData;
@property NSInteger blog_id;
@end
