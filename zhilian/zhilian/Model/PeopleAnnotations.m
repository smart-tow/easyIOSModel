//
//  UserAnnotations.m
//  FlyoxSJ
//
//  Created by zhao chunqiu on 13-12-10.
//  Copyright (c) 2013年 zhao chunqiu. All rights reserved.
//

#import "PeopleAnnotations.h"
#import "AppDelegate.h"
@implementation PeopleAnnotations
-(id) initWithCoordinate:(CLLocationCoordinate2D)theCoordinate andProp:(id)prop
{
	self = [super initWithCoordinate:theCoordinate andProp:prop];
    coordinate  = theCoordinate;
    
//    imageName = @"v1_map_icon";

    if (!user) {
        user = [[People alloc] init];
    }
    user =(People *) prop ;
    _title = user.people_name;
    _subtitle  =user.address;
    return self;
}

-(People*)getUser{
    
    if(user){
        return user;
    }
    else {
        return nil;
    }
}
 
@end