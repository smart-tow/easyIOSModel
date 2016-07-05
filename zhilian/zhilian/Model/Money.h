//
//  Money.h
//  zhishan
//
//  Created by MinG on 16/5/25.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <EasyIOS/EasyIOS.h>
@interface Money : Model
//money	object	投票记录
//money_id: "10",
//name: "晚饭",
//money: "-8.80",
//created_at: "1463366926",
//user_id: "6129321497482215425",
//action_user: "6129321497482215425",
//is_back: "1",
//food_id: "3",
//food_at: "1463328000"
@property(nonatomic,assign)NSInteger money_id;
@property(nonatomic,strong)NSString *name;
@property(nonatomic,assign)double money;
@property(nonatomic,assign)NSInteger created_at;
@property(nonatomic,strong)NSString *user_id;
@property(nonatomic,strong)NSString *action_user;
@property(nonatomic,assign)NSInteger is_back;
@property(nonatomic,assign)NSInteger food_id;
@property(nonatomic,assign)NSInteger food_at;
@end
