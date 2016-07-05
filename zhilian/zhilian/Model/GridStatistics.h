//
//  GridStatistics.h
//  zhishan
//
//  Created by keyong li on 16/1/22.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <EasyIOS/EasyIOS.h>
@interface GridStatistics : Model{
    NSString *grid_id;
    NSInteger population_type;
    NSInteger total;
}
@property(nonatomic,copy) NSString *grid_id;
@property NSInteger population_type;
@property NSInteger total;
@end
