//
//  IndustryType.h
//  zhishan 走访类型 表单中的 type_id
//
//  Created by keyong li on 15/12/7.
//  Copyright © 2015年 keyong li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <EasyIOS/EasyIOS.h>
@interface IndustryType : Model
{
    NSInteger type_id;//id
    NSString *type_name;//名称
    NSString *descript;//描述
    NSInteger status;//状态
}
@property NSInteger type_id;//id
@property(nonatomic,copy) NSString *type_name;//名称
@property(nonatomic,copy) NSString *descript;//描述
@property NSInteger status;//状态
@end
