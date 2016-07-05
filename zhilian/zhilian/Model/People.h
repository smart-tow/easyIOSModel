//
//  People.h
//  zhishan
//  养老人
//  Created by keyong li on 15/12/8.
//  Copyright © 2015年 keyong li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Grid.h"
#import <EasyIOS/EasyIOS.h>
@interface People : Model{
    NSInteger people_id;
    NSString *people_name ;//名称
    NSInteger create_at ;//
    NSInteger sex;//性别
    NSString * grid_id;//网格id
    NSString *id_card;//省份证号
    NSInteger people_type;//人口类型
    NSInteger    birthday;//生日
    NSString *basic_feature;//基本信息
    NSString *real_address;//居住地址
    NSInteger  population_type;//群里类型
    NSInteger  hukou_type;//户口类型
    NSString *people_number ;//编号
    NSString *principal;//照看人
    NSString *principal_phone ;//照看人电话
    NSString *economy_situation  ;//经济状况
    NSString *live_situation;//生活状况
    NSString *live_type;//居住情况
    NSString *body_situation;//身体情况
    NSString *deformed_number;//残疾证编号
    NSString *home_tel;//居家电话
    NSInteger  status;//状态
    double    truelng;//
    double    truelat;//
    double    alt;//
    NSString *address;//
    NSString *apart;//距离 未记录在数据库中
    NSInteger last_check;//左后检查时间
    NSInteger type_id;
    NSString *family_members;//家庭情况
    NSString *production_situation;//生产经营情况
    NSString *political_outlook;
    Grid *grid ;
}
@property NSInteger people_id;
@property (nonatomic,copy)NSString *people_name ;//名称
@property NSInteger create_at ;//
@property NSInteger sex;//性别
@property NSString * grid_id;//网格id
@property (nonatomic,copy)NSString *id_card;//省份证号
@property NSInteger people_type;//人口类型
@property NSInteger    birthday;//生日
@property (nonatomic,copy)NSString * basic_feature;//基本信息
@property (nonatomic,copy)NSString * real_address;//居住地址
@property NSInteger  population_type;//群里类型
@property NSInteger  hukou_type;//户口类型
@property (nonatomic,copy)NSString * people_number ;//编号
@property (nonatomic,copy)NSString * principal;//照看人
@property (nonatomic,copy)NSString * principal_phone ;//照看人电话
@property (nonatomic,copy)NSString * economy_situation  ;//经济状况
@property (nonatomic,copy)NSString * live_situation;//生活状况
@property (nonatomic,copy)NSString * live_type;//居住情况
@property (nonatomic,copy)NSString * body_situation;//身体情况
@property (nonatomic,copy)NSString * deformed_number;//残疾证编号
@property (nonatomic,copy)NSString * home_tel;//居家电话
@property NSInteger  status;//状态
@property double    truelng;//
@property double    truelat;//
@property double    alt;//
@property (nonatomic,copy) NSString * address;//
@property (nonatomic,copy)NSString *apart;//距离 未记录在数据库中
@property NSInteger last_check;//左后检查时间
@property NSInteger type_id;
@property (nonatomic,strong)Grid *grid;
@property (nonatomic,copy)NSString *family_members;//家庭情况
@property (nonatomic,copy)NSString *production_situation;//生产经营情况
@property (nonatomic,copy)NSString *political_outlook;
@end
