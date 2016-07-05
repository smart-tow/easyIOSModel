//
//  Last_require.h
//  zhishan
//
//  Created by MinG on 16/5/23.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <EasyIOS/EasyIOS.h>
@interface Last_require : Model
//最后上报数据
@property(nonatomic,strong)NSString *content;
@property(nonatomic,assign)NSInteger  require_id;
@property(nonatomic,assign)NSInteger creat_at;
@property(nonatomic,strong)NSString *user_id;
@property(nonatomic,strong)NSString *real_name;
@property(nonatomic,assign)NSInteger check_item_id;
@property(nonatomic,assign)float cell_height;
@end
