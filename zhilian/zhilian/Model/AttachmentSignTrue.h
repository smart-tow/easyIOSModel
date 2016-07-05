//
//  AttachmentSignTrue.h
//  zhishan
// 签名附件实体
//  Created by keyong li on 15/12/18.
//  Copyright © 2015年 keyong li. All rights reserved.
//

#import <EasyIOS/EasyIOS.h>
#import "const.h"
@interface AttachmentSignTrue : Model{
    NSInteger attachment_id;
    NSInteger task_id;
    NSString * user_id;
    NSString *attachment_path;
    NSString *path;
    NSInteger attachment_type;
    NSString *annotations;
    NSInteger created_at;
    NSInteger is_main;
    double    truelng;//
    double    truelat;//
    double    alt;//
    NSString *address;//
    NSString *attachment_name;
    AccessoryType accessoryType;	//附件类型，
    NSUInteger accessorySize;		//附件的大小
    NSString *accessoryName;		//如果附件是文件，它的名字
    NSString *accessoryUrlPath;
    
    NSData *accessoryData;
}
@property NSInteger attachment_id;
@property NSInteger task_id;
@property (nonatomic,copy)NSString * user_id;
@property (nonatomic,copy)NSString *attachment_path;
@property (nonatomic,copy) NSString *path;
@property NSInteger attachment_type;
@property (nonatomic,copy) NSString *annotations;
@property NSInteger created_at;
@property NSInteger is_main;
@property double    truelng;//
@property double    truelat;//
@property double    alt;//
@property (nonatomic,copy) NSString * address;//
@property (nonatomic,copy)NSString *attachment_name;
@property AccessoryType accessoryType;
@property NSUInteger accessorySize;
@property (nonatomic, copy) NSString *accessoryName;
@property (nonatomic, copy) NSString *accessoryUrlPath;
@property (nonatomic, retain) NSData *accessoryData;
@end
