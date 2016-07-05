//
//  Classify.h
//  zhishan
//
//  Created by keyong li on 15/12/7.
//  Copyright © 2015年 keyong li. All rights reserved.
//

#import <EasyIOS/EasyIOS.h>

@interface Classify : Model{
    NSInteger classif_id;//id
    NSString *classify_name;//名称
    NSInteger status;//状态
    NSString *remark;//
    NSInteger create_at;//创建时间
    
}
@property NSInteger classif_id;//id
@property(nonatomic,copy) NSString *classify_name;//名称
@property NSInteger status;//状态
@property(nonatomic,copy) NSString *remark;//
@property NSInteger create_at;//创建时间
@end
