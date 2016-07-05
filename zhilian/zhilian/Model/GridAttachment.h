//
//  GridAttachment.h
//  zhishan
//
//  Created by keyong li on 16/1/22.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "const.h"
#import <EasyIOS/EasyIOS.h>
@interface GridAttachment : Model{
    NSInteger attachment_id;
    NSString *grid_id;
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
@property(nonatomic,copy) NSString *grid_id;

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
