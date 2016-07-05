//
//  BlogAttachmenList.h
//  zhishan
//
//  Created by MinG on 16/5/12.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import <EasyIOS/EasyIOS.h>

@interface BlogAttachmenList : Model{
    NSInteger attachment_id;
    NSInteger store_type;
    NSInteger attachment_type;
    NSInteger created_at;
    NSInteger blog_id;
    NSString *attachment_path;
    NSString *attachment_name;
    NSString *annotations;
//    AccessoryType accessoryType;	//附件类型，
    NSUInteger accessorySize;		//附件的大小
    NSString *accessoryName;		//如果附件是文件，它的名字
    NSString *accessoryUrlPath;
    NSData *accessoryData;
    NSInteger attachment_count;
    NSString *path;
}
@property NSInteger attachment_id;
//@property AccessoryType accessoryType;	//附件类型，
@property NSInteger store_type;
@property NSInteger attachment_type;
@property NSInteger created_at;
@property NSInteger blog_id;
@property(nonatomic,copy)NSString *attachment_path;
@property(nonatomic,copy)NSString *attachment_name;
@property(nonatomic,copy)NSString *annotations;
@property NSUInteger accessorySize;
@property (nonatomic, copy) NSString *accessoryName;
@property (nonatomic, copy) NSString *accessoryUrlPath;
@property (nonatomic, retain) NSData *accessoryData;
@property NSInteger attachment_count;
@property(nonatomic,copy)NSString *path;

@end
