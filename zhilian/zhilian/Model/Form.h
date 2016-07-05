//
//  Form.h
//  zhishan 表单
//
//  Created by keyong li on 15/12/7.
//  Copyright © 2015年 keyong li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <EasyIOS/EasyIOS.h>
#import "Item.h"
@interface Form : Model
{
    NSInteger form_id;//id
    NSString *form_name;//名称
    NSInteger type_id;//走访类型id
    NSInteger status;//状态
    NSString *patrol;//表单项 tbl_item
    NSInteger create_at;//创建时间
    NSString *des;//描述
    NSMutableArray *itemList;
}
@property NSInteger form_id;//id
@property(nonatomic,copy) NSString *form_name;//名称
@property NSInteger type_id;//走访类型id
@property NSInteger status;//状态
@property(nonatomic,copy) NSString *patrol;//表单项 tbl_item
@property NSInteger create_at;//创建时间
@property(nonatomic,copy) NSString  *des;//描述
@property(nonatomic,copy) NSMutableArray *itemList;
@end
