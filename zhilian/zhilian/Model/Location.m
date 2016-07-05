//
//  Location.m
//  Flyox
//
//  Created by  on 13-4-18.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "Location.h"

@implementation Location
@synthesize locationID,userID,dateLine,trueLat,trueLng,elevation,status,provider;
-(id)init{
//    [super init];
    trueLat = 0;
    trueLng = 0;
    return  self;
}

@end
