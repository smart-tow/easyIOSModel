//
//  UserInfo.h
//  zhilian
//
//  Created by keyong li on 16/6/21.
//  strongright © 2016年 keyong li. All rights reserved.
//

#import <EasyIOS/EasyIOS.h>
#import "Group.h"
#import "Position.h"
#import "Grid.h"
@interface UserInfo : Model


@property(nonatomic,retain) NSString * user_id;
@property(nonatomic,retain)NSString *name;
@property(nonatomic,retain)NSString *userPassword;
@property(nonatomic,retain)NSString *email;
@property(nonatomic,retain)NSString *real_name;//用户真实姓名
@property(nonatomic,retain)NSString *phone;//用户电话
@property (nonatomic, retain) NSNumber * role;//是否为指派员
@property (nonatomic, retain) NSNumber * is_depa_head;//是否为部门负责人
@property (nonatomic, retain) NSNumber * type;
@property (nonatomic, retain) NSNumber * created_at;
@property (nonatomic, retain) NSNumber * group_id;
@property (nonatomic,retain) NSString * grid_id;

@property (nonatomic,retain) NSString *token;
@property (nonatomic,retain) Group *group;
@property (nonatomic,retain) Position *position;
@property (nonatomic, retain) NSNumber * position_id;
@property (nonatomic,retain) Grid *grid;

@property (nonatomic, retain) NSNumber * sectionNumber;
@property (nonatomic, retain) NSNumber * recordID;
@property BOOL rowSelected;
@property (nonatomic, retain) NSNumber * lastatTime;
@property(nonatomic,retain) NSString  *thumbnail_profile_image;//小图
@property(nonatomic,retain) NSString  * bmiddle_profile_image;//中图
@property(nonatomic,retain) NSString  *big_profile_image;//大图
@property (nonatomic, retain) NSData *accessoryData;
@property (nonatomic, retain) NSNumber * attachment_type;
@property NSUInteger accessorySize;		//附件的大小
@property(nonatomic,strong) NSString *path;//本地路径;
@property(nonatomic,copy) NSString* accessoryName;		//附件的名字
@property (nonatomic,strong) NSString *text;
@end
