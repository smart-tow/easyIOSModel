//
//  UserInfo.m
//  zhilian
//
//  Created by keyong li on 16/6/21.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import "UserInfo.h"

@implementation UserInfo
+(BOOL)propertyIsOptional:(NSString*)propertyName
{
    return YES;
}
+(void)save:(NSString *)uid{
    if([self findByColumn:@"user_id" value:uid].count>0){
//        [self ];
        
    }
    
}
@end
