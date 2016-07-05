//
//  Location.h
//  Flyox
//
//  Created by  on 13-4-18.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <EasyIOS/EasyIOS.h>
@interface Location : Model
{
    NSString *locationID;
    NSInteger userID;
    NSInteger dateLine;
    double trueLat;
    double trueLng;
    double elevation;
    NSInteger status;
    NSString *provider;
}
@property(nonatomic,copy)NSString *locationID;
@property NSInteger userID;
@property NSInteger dateLine;
@property double trueLat;
@property double trueLng;
@property double elevation;
@property NSInteger status;
@property (nonatomic,copy)NSString *provider;
@end
