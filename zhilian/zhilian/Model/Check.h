//
//  Check.h
//  zhishan
//
//  Created by MinG on 16/5/23.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import <EasyIOS/EasyIOS.h>

@interface Check : Model

@property(nonatomic,assign)NSInteger check_id;
@property(nonatomic,assign)NSInteger status;
@property(nonatomic,assign)NSInteger create_at;
@property(nonatomic,strong)NSString *check_name;
@property(nonatomic,strong)NSString *remark;//备注
@property(nonatomic,strong)NSString *user_id;//创建收者
@property(nonatomic,assign)NSInteger push;//是否发布
@property(nonatomic,assign)float cell_height;
@end
