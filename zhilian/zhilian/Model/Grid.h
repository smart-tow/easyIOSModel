//
//  Grid.h
//  zhishan
//
//  Created by keyong li on 15/12/8.
//  Copyright © 2015年 keyong li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <EasyIOS/EasyIOS.h>
@interface Grid : Model{
    NSString * grid_id;
    NSInteger is_examine;
    NSString * pid;
    NSInteger status;
    NSString *field;
    NSString *grid_name;
    NSInteger create_at;
    double truelng;
    double truelat;
    double alt;
    NSString *address;
    NSInteger user_upper_bound;
    NSString *remark;//
    NSMutableArray *attachmentList;
    NSMutableArray *statisticsList;
}

@property NSInteger sectionNumber;
@property NSInteger recordID;
@property BOOL rowSelected;

@property (nonatomic,copy)NSString * grid_id;
@property NSInteger is_examine;
@property (nonatomic,copy) NSString * pid;
@property NSInteger status;
@property (nonatomic,copy) NSString *field;
@property (nonatomic,copy) NSString *grid_name;
@property NSInteger create_at;
@property double truelng;
@property double truelat;
@property double alt;
@property (nonatomic,copy)NSString *address;
@property     NSInteger user_upper_bound;
@property(nonatomic,copy) NSString *remark;
@property(nonatomic,strong) NSMutableArray *attachmentList;
@property(nonatomic,strong)NSMutableArray *statisticsList;
@end
