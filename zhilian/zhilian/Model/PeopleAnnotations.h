//
//  UserAnnotations.h
//  FlyoxSJ
//
//  Created by zhao chunqiu on 13-12-10.
//  Copyright (c) 2013年 zhao chunqiu. All rights reserved.
//

#import "DefineAnnotation.h"
#import "People.h"
#import <EasyIOS/EasyIOS.h>
@interface PeopleAnnotations : DefineAnnotation
{
    People *user;
}
-(People*)getUser;
@end
