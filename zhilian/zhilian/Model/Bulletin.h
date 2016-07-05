//
//  Bulletin.h
//  zhishan
//
//  Created by keyong li on 16/1/14.
//  Copyright © 2016年 keyong li. All rights reserved.
//

#import <EasyIOS/EasyIOS.h>

@interface Bulletin : Model
{
    
    NSInteger bulletin_id;
    NSString *create_person;
    NSString *create_person_name;
    NSString *title;
    NSString *context;
    NSInteger create_at;
    NSInteger type;
    NSInteger status;
    NSMutableArray *attachmentList;
}
@property NSInteger bulletin_id;
@property(nonatomic,copy) NSString *create_person;
@property(nonatomic,copy) NSString *create_person_name;
@property(nonatomic,copy) NSString *title;
@property(nonatomic,copy) NSString *context;
@property NSInteger create_at;
@property NSInteger type;
@property NSInteger status;
@property NSInteger bulletin_read;
@property (nonatomic,strong)NSMutableArray *attachmentList;
@end
