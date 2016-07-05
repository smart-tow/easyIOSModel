//
//  Item.h
//  zhishan
//
//  Created by keyong li on 15/12/7.
//  Copyright © 2015年 keyong li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TaskItem.h"
#import <EasyIOS/EasyIOS.h>
@interface Item : Model{
    NSInteger item_id;//id
    NSString *answer;//答案
    NSString *question;//问题
    NSInteger type;//用处未知
    NSInteger status;//
    NSString *classify;//走访项目类型名称
    NSString *standard_answer;//标准答案
    NSInteger tag;//问答题还是选择题 1选择题 2：问答题
    NSInteger classify_id;//走访类型id
    NSInteger is_field_treatment;//是否需要现场处理 1：是 2：否

}
@property NSInteger item_id;//id
@property(nonatomic,copy) NSString *answer;//答案
@property(nonatomic,copy) NSString *question;//问题
@property NSInteger type;//用处未知
@property NSInteger status;//
@property (nonatomic,copy) NSString *classify;//走访项目类型名称
@property (nonatomic,copy) NSString *standard_answer;//标准答案
@property NSInteger tag;//问答题还是选择题 1选择题 2：问答题
@property NSInteger classify_id;//走访类型id
@property NSInteger is_field_treatment;

@end
