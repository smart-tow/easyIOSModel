//
//  Untils.h
//  FlyoxSJ
//
//  Created by zhao chunqiu on 13-11-4.
//  Copyright (c) 2013年 zhao chunqiu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <UIKit/UIKit.h>
#import "const.h"
@class Blog;
@interface Untils : NSObject{

}

+(UIColor *)hexStringToColor: (NSString *) stringToConvert;
+ (NSString*) stringFromFomate:(NSDate*) date formate:(NSString*)formate;
+ (void)registNotify:(id)target WithAction:(SEL)action WithName:(NSString *)name WithObject:(NSObject *)obj;
+ (void)unRegistNotify:(id)target WithName:(NSString *)name WithObject:(NSObject *)obj;
//设置圆角
+(void)DrawFillet:(UIView *)view;
//设置填充
+(void)ScaleFillet:(UIView *)view;
//根据路径回去UIImage对象
+(UIImage *)getImageForPath:(NSString *)path;

+(NSDate *)dateFromString:(NSString *)datestr;

+(NSString *)getFullPath:(NSString *)path;
+(BOOL)getPathIffileExists:(NSString *)path;//判断文件是否存在
+ (UIImage *)image:(UIImage *)image rotation:(UIImageOrientation)orientation;

+(void)removeOldUILocalNotification:(NSString *)key;
+(void)setBadgeWithButton:(UIView *)showView withNum:(NSString *)badgeValue;
+(BOOL)isValidateEmail:(NSString *)Email;
+(BOOL) isValidateMobile:(NSString *)mobile;
+(NSString *)returnTimeText:(NSInteger)_duration;
+(CGSize)contentSizeWithView:(UIView *)view;
+(CGSize)contentSizeWithFont:(UIFont *) font withWidth:(CGFloat)width withString:(NSString *)string;


+(NSString *)getLocationImage:(CLLocation *)location;

+(UIImage *)getImageFromView:(UIView *)view;
+(NSString *)saveAttachment:(NSInteger)accessoryType attachment_name:(NSString *)file_name data:(NSData *)data;

+(NSInteger)getDaysWithSinceRoNow:(NSInteger)since;
+(NSString *)getProblemStauts:(NSInteger)status;
+ (NSData*)imageRepresentations:(UIImage*)image With:(BOOL)pngOrJpg;
+(void)addViewConstraintsWith:(UIView *)childView toVoew:(UIView *)fatherView;
+ (UIImage *)fixOrientation:(UIImage *)srcImg;


+ (NSString *)trim:(NSString *)val trimCharacterSet:(NSCharacterSet *)characterSet;
+ (NSString *)trimWhitespace:(NSString *)val;
+ (NSString *)trimNewline:(NSString *)val;
+ (NSString *)trimWhitespaceAndNewline:(NSString *)val;
+(NSString *)saveAttachmentUserInfo:(NSString *)file_name file_path:(NSString*)file_path data:(NSData *)data;//保存用户本地头像

@end
