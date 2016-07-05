//
//  Meal.h
//  zhishan
//
//  Created by MinG on 16/5/25.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <EasyIOS/EasyIOS.h>
@interface Meal : Model
//food_id	int	就餐id
//name	string	名称
//price	decimal	单价
//remark	string	备注
//throw_end	string	投饭票截止时间
//back_end	string	退饭票截止时间
//is_throw	int	今天是否投了 1：否 2：是


@property(nonatomic,assign)NSInteger food_id;
@property(nonatomic,strong)NSString *name;
@property(nonatomic,assign)double price;
@property(nonatomic,strong)NSString *remark;
@property(nonatomic,strong)NSString *throw_end;
@property(nonatomic,strong)NSString *back_end;
@property(nonatomic,assign)NSInteger is_throw;
//money
@property(nonatomic,assign)NSInteger money_id;
@property(nonatomic,assign)double money;
@property(nonatomic,assign)NSInteger created_at;
@property(nonatomic,strong)NSString *user_id;
@property(nonatomic,strong)NSString *action_user;
@property(nonatomic,assign)NSInteger is_back;
@property(nonatomic,assign)NSInteger food_at;
@end
