//
//  BulletinAttachment.h
//  zhishan
//
//  Created by keyong li on 16/1/14.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import <EasyIOS/EasyIOS.h>
#import "const.h"
@interface BulletinAttachment : Model{
    NSInteger attachment_id;
    NSInteger bulletin_id;
    NSString *attachment_path;
    NSString *path;
    NSInteger attachment_type;
    NSString *annotations;
    NSInteger created_at;
    NSString *attachment_name;
    
    
    AccessoryType accessoryType;	//附件类型，
    NSUInteger accessorySize;		//附件的大小
    NSString *accessoryName;		//如果附件是文件，它的名字
    NSString *accessoryUrlPath;
    
    NSData *accessoryData;
}
@property NSInteger attachment_id;
@property NSInteger bulletin_id;

@property (nonatomic,copy)NSString *attachment_path;
@property (nonatomic,copy) NSString *path;
@property NSInteger attachment_type;
@property (nonatomic,copy) NSString *annotations;
@property NSInteger created_at;
@property(nonatomic,copy)NSString *attachment_name;



@property AccessoryType accessoryType;
@property NSUInteger accessorySize;
@property (nonatomic, copy) NSString *accessoryName;
@property (nonatomic, copy) NSString *accessoryUrlPath;
@property (nonatomic, retain) NSData *accessoryData;


@end
