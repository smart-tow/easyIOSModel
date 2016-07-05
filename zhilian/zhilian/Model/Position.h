//
//  Position.h
//  FlyoxSJ
//
//  Created by zhao chunqiu on 13-11-28.
//  Copyright (c) 2013年 zhao chunqiu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <EasyIOS/EasyIOS.h>
@interface Position : Model
{
    NSInteger positionid;
    NSString *positionname;
    NSInteger rank;
    NSString *color;
    NSString *discript;
}
@property NSInteger positionid;
@property (nonatomic,copy)NSString *positionname;
@property NSInteger rank;
@property (nonatomic,copy)NSString *color;
@property (nonatomic,copy)NSString *discript;
@end
