//
//  Untils.m
//  FlyoxSJ
//
//  Created by zhao chunqiu on 13-11-4.
//  Copyright (c) 2013年 zhao chunqiu. All rights reserved.
//

#import "Untils.h"
#import <QuartzCore/QuartzCore.h>

#import "const.h"

@implementation Untils

+(UIColor *) hexStringToColor: (NSString *) stringToConvert
{
    NSString *cString = [[stringToConvert stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    // String should be 6 or 8 characters
    
    if ([cString length] < 6) return [UIColor blackColor];
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"]) cString = [cString substringFromIndex:1];
    if ([cString length] != 6) return [UIColor blackColor];
    
    // Separate into r, g, b substrings
    
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    // Scan values
    unsigned int r, g, b;
    
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    //    NSLog(@"//////:[UIColor colorWithRed:(%f/ 255.0f) green:(%f/ 255.0f) blue:(%f/ 255.0f) alpha:1.0f]",(float) r,(float) g,(float) b);
    //
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:1.0f];
    
    
}

+ (NSString*) stringFromFomate:(NSDate*) date formate:(NSString*)formate
{
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	[formatter setDateFormat:formate];
	NSString *str = [formatter stringFromDate:date];
 
	return str;
}
+(NSDate *)dateFromString:(NSString *)datestr
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
	NSDate *d = [formatter dateFromString:datestr];
 
    return d;
}
//添加监听器 1、要添加监听的对象一般为self 2、监听调用的方法action 3、监听器标示 4、接收参数
+ (void)registNotify:(id)target WithAction:(SEL)action WithName:(NSString *)name WithObject:(NSObject *)obj
{
	
	[[NSNotificationCenter defaultCenter] addObserver: target
											 selector: action
												 name: name
											   object: obj];
}

//注销监听器
+ (void)unRegistNotify:(id)target WithName:(NSString *)name WithObject:(NSObject *)obj
{
	[[NSNotificationCenter defaultCenter] removeObserver: target
													name: name
												  object: obj];
}

//设置圆角
+(void)DrawFillet:(UIView *)view{
    
    CALayer *_mylayer = [view layer];
    //圆角
    [_mylayer setMasksToBounds:YES];
    [_mylayer setCornerRadius:2.0];
}
+(void)ScaleFillet:(UIView *)view{
    view.clipsToBounds = YES;
    view.contentMode = UIViewContentModeScaleAspectFill;
}
+(UIImage *)getImageForPath:(NSString *)path
{
    
    UIImage *image=nil;
    NSFileManager *manager = [[NSFileManager alloc] init];
    NSString *documentsDirectory = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];//指向文件目录
    path = [NSString stringWithFormat:@"%@%@",documentsDirectory,path];

    if([manager fileExistsAtPath:path]){
        UIImage *img= [UIImage imageWithContentsOfFile:path];
        
        if(img.size.width!=0 && img.size.height!=0){
            image = img;
        }
    }
 
    return image;
}
+(BOOL)getPathIffileExists:(NSString *)path{
    //创建存储路径
    NSString *documentsDirectory = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];//指向文件目录
    
    path = [NSString stringWithFormat:@"%@%@",documentsDirectory,path];//创建一个目录

    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:path]) {
            NSLog(@"%@",path);
        return NO;
    }
    return YES;
}
//获取文件完整路径
+(NSString *)getFullPath:(NSString *)path
{
    NSString *documentsDirectory = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];//指向文件目录
    
    return [documentsDirectory stringByAppendingPathComponent:path];;
}

//旋转图片  
+ (UIImage *)image:(UIImage *)image rotation:(UIImageOrientation)orientation

{
    
    long double rotate = 0.0;
    
    CGRect rect;
    
    float translateX = 0;
    
    float translateY = 0;
    
    float scaleX = 1.0;
    
    float scaleY = 1.0;
    
    
    
    switch (orientation) {
            
        case UIImageOrientationLeft:
            
            rotate = M_PI_2;
            
            rect = CGRectMake(0, 0, image.size.height, image.size.width);
            
            translateX = 0;
            
            translateY = -rect.size.width;
            
            scaleY = rect.size.width/rect.size.height;
            
            scaleX = rect.size.height/rect.size.width;
            
            break;
            
        case UIImageOrientationRight:
            
            rotate = 3 * M_PI_2;
            
            rect = CGRectMake(0, 0, image.size.height, image.size.width);
            
            translateX = -rect.size.height;
            
            translateY = 0;
            
            scaleY = rect.size.width/rect.size.height;
            
            scaleX = rect.size.height/rect.size.width;
            
            break;
            
        case UIImageOrientationDown:
            
            rotate = M_PI;
            
            rect = CGRectMake(0, 0, image.size.width, image.size.height);
            
            translateX = -rect.size.width;
            
            translateY = -rect.size.height;
            
            break;
            
        default:
            
            rotate = 0.0;
            
            rect = CGRectMake(0, 0, image.size.width, image.size.height);
            
            translateX = 0;
            
            translateY = 0;
            
            break;
            
    }
    
    
    
    UIGraphicsBeginImageContext(rect.size);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //做CTM变换
    
    CGContextTranslateCTM(context, 0.0, rect.size.height);
    
    CGContextScaleCTM(context, 1.0, -1.0);
    
    CGContextRotateCTM(context, rotate);
    
    CGContextTranslateCTM(context, translateX, translateY);
    
    
    
    CGContextScaleCTM(context, scaleX, scaleY);
    
    //绘制图片
    
    CGContextDrawImage(context, CGRectMake(0, 0, rect.size.width, rect.size.height), image.CGImage);
    
    
    
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    //可恶可恶 为啥当时没有添加结束呢，折腾了我老半天
    UIGraphicsEndImageContext();
    
    return img;
    
}

//清除某种通知
+(void)removeOldUILocalNotification:(NSString *)key{
    for (UILocalNotification* each in [UIApplication sharedApplication].scheduledLocalNotifications) {
        //清除一条通知
        if([[each.userInfo objectForKey:@"userinfo"] isEqualToString:key]){
            
            [[UIApplication sharedApplication]cancelLocalNotification:each];
            break;
        }
    }
}

//验证电子邮箱
+ (BOOL)isValidateEmail:(NSString *)Email

{
    
    NSString *emailCheck = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES%@",emailCheck];
    
    return [emailTest evaluateWithObject:Email];
    
}
//验证手机号码
+(BOOL) isValidateMobile:(NSString *)mobile
{
    //手机号以13， 15，18开头，八个 \d 数字字符
    NSString *phoneRegex = @"^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$";
    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneRegex];
    //    NSLog(@"phoneTest is %@",phoneTest);
    return [phoneTest evaluateWithObject:mobile];
}
//根据时间（秒）返回应该显示的时间格式字符窜
+(NSString *)returnTimeText:(NSInteger)_duration
{
    NSString *minute = @"00";
    NSString *second = @"00";
    if(_duration >= 60){
        NSInteger min = _duration/60;
        NSInteger sec = _duration - (min*60);
        if(min > 9)
            minute = [NSString stringWithFormat:@"%ld",(long)min];
        else
            minute = [NSString stringWithFormat:@"0%ld",(long)min];
        if(sec > 9)
            second = [NSString stringWithFormat:@"%ld",(long)sec];
        else
            second = [NSString stringWithFormat:@"0%ld",(long)sec];
    }else{
        minute = @"00";
        if(_duration > 9)
            second = [NSString stringWithFormat:@"%ld",(long)_duration];
        else
            second = [NSString stringWithFormat:@"0%ld",(long)_duration];
    }
    return [NSString stringWithFormat:@"%@:%@",minute,second];
}

+(CGSize)contentSizeWithView:(UIView *)view{
    CGFloat width;
    UIFont *font;
    NSString *content;

    if([view isKindOfClass:[UILabel class]]){
       
        UILabel *label = (UILabel *)view;
        width= label.frame.size.width; //label.superview.frame.size.width-(label.frame.origin.x*2);

        font = label.font;
        content = label.text;
        
        if(content.length==0){
            content = [label.attributedText string];
        }
    }else if([view isKindOfClass:[UITextField class]]){
        UITextField *textField = (UITextField *)view;
        width= textField.frame.size.width;//textField.superview.frame.size.width-(textField.frame.origin.x*2);
        font = textField.font;
        content = textField.text;
        if(content.length==0){
            content = [textField.attributedText string];
        }
    }
    
    return [self contentSizeWithFont:font withWidth:width withString:content];
}

+(CGSize)contentSizeWithFont:(UIFont *) font withWidth:(CGFloat)width withString:(NSString *)string{

    if(width==0){
        width = [UIScreen mainScreen].bounds.size.width;
    }
    CGSize size;
    if ([[[UIDevice currentDevice]systemVersion]floatValue]>=7.0) {
        NSDictionary * tdic = [NSDictionary dictionaryWithObjectsAndKeys:font,NSFontAttributeName,nil];
 
        size= [string boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:tdic context:nil].size;
    
        //NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesFontLeading|NSStringDrawingUsesDeviceMetrics
    }else{
        
        size= [string sizeWithFont:font constrainedToSize:CGSizeMake(width, CGFLOAT_MAX)];
        
    
    }
    size.height  += 2;
    return size;
}


//通过高德api  把经纬度生成一张图片
+(NSString *)getLocationImage:(CLLocation *)location{
    NSString *loc = [NSString stringWithFormat:@"%f,%f",location.coordinate.latitude,location.coordinate.longitude];
    return [NSString stringWithFormat:@"http://restapi.amap.com/v3/staticmap?scale=2&location=%@&zoom=10&size=216*140&markers=mid,,A:%@&key=ee95e52bf08006f63fd29bcfbcf21df0",loc,loc];
}
//UIView转化成UIImage
+(UIImage *)getImageFromView:(UIView *)view{

    CGSize size = view.bounds.size;
    // 下面方法，第一个参数表示区域大小。第二个参数表示是否是非透明的。如果需要显示半透明效果，需要传NO，否则传YES。第三个参数就是屏幕密度了
    UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage*image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

 +(NSInteger)getDaysWithSinceRoNow:(NSInteger)since{
    NSString * nowTime =[Untils stringFromFomate:[NSDate date]  formate:@"yyyy-MM-dd"];
    
    NSInteger days =(since-[[Untils dateFromString:nowTime] timeIntervalSince1970])/(3600*24);
    
    return days;
}
//获取问题状态名称
+(NSString *)getProblemStauts:(NSInteger)status{
    NSString *statusName = @"";
    switch (status) {
        case 1:
            statusName = @"未处理";
            break;
        case 2:
            statusName = @"已签收";break;
        case 3:
            statusName = @"已完成";break;
        case 9:
            statusName =@"退回";break;
        default:
            break;
    }
    
    return statusName;
}

+ (NSData*)imageRepresentations:(UIImage*)image With:(BOOL)pngOrJpg
{
    //统一做 50%压缩 png、jpg图片
    return UIImageJPEGRepresentation(image, 0.5);
}
//给某个视图中的子视图添加约束
+(void)addViewConstraintsWith:(UIView *)childView toVoew:(UIView *)fatherView{
    childView.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint* leftConstraint = [NSLayoutConstraint constraintWithItem:childView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:fatherView attribute:NSLayoutAttributeLeading multiplier:1.0f constant:0.0f];
    
    //mytableView右侧与父视图右侧对齐
    NSLayoutConstraint* rightConstraint = [NSLayoutConstraint constraintWithItem:childView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:fatherView attribute:NSLayoutAttributeTrailing multiplier:1.0f constant:0.0f];
    
    //mytableView顶部与父视图顶部对齐
    NSLayoutConstraint* topConstraint = [NSLayoutConstraint constraintWithItem:childView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:fatherView attribute:NSLayoutAttributeTop multiplier:1.0f constant:0.0f];
    
    //mytableView高度为父视图高度
    NSLayoutConstraint* heightConstraint = [NSLayoutConstraint constraintWithItem:childView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:fatherView attribute:NSLayoutAttributeHeight multiplier:1.0f constant:0.0f];
    
    //iOS 8.0以后设置active属性值
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0){
        leftConstraint.active = YES;
        rightConstraint.active = YES;
        topConstraint.active = YES;
        heightConstraint.active = YES;
    }
    
}
//矫正图片
+ (UIImage *)fixOrientation:(UIImage *)srcImg
{
    if (srcImg.imageOrientation == UIImageOrientationUp) return srcImg;
    CGAffineTransform transform = CGAffineTransformIdentity;
    switch (srcImg.imageOrientation) {
        case UIImageOrientationDown:
        case UIImageOrientationDownMirrored:
            transform = CGAffineTransformTranslate(transform, srcImg.size.width, srcImg.size.height);
            transform = CGAffineTransformRotate(transform, M_PI);
            break;
            
        case UIImageOrientationLeft:
        case UIImageOrientationLeftMirrored:
            transform = CGAffineTransformTranslate(transform, srcImg.size.width, 0);
            transform = CGAffineTransformRotate(transform, M_PI_2);
            break;
            
        case UIImageOrientationRight:
        case UIImageOrientationRightMirrored:
            transform = CGAffineTransformTranslate(transform, 0, srcImg.size.height);
            transform = CGAffineTransformRotate(transform, -M_PI_2);
            break;
        case UIImageOrientationUp:
        case UIImageOrientationUpMirrored:
            break;
    }
    
    switch (srcImg.imageOrientation) {
        case UIImageOrientationUpMirrored:
        case UIImageOrientationDownMirrored:
            transform = CGAffineTransformTranslate(transform, srcImg.size.width, 0);
            transform = CGAffineTransformScale(transform, -1, 1);
            break;
            
        case UIImageOrientationLeftMirrored:
        case UIImageOrientationRightMirrored:
            transform = CGAffineTransformTranslate(transform, srcImg.size.height, 0);
            transform = CGAffineTransformScale(transform, -1, 1);
            break;
        case UIImageOrientationUp:
        case UIImageOrientationDown:
        case UIImageOrientationLeft:
        case UIImageOrientationRight:
            break;
    }
    
    CGContextRef ctx = CGBitmapContextCreate(NULL, srcImg.size.width, srcImg.size.height,
                                             CGImageGetBitsPerComponent(srcImg.CGImage), 0,
                                             CGImageGetColorSpace(srcImg.CGImage),
                                             CGImageGetBitmapInfo(srcImg.CGImage));
    CGContextConcatCTM(ctx, transform);
    switch (srcImg.imageOrientation) {
        case UIImageOrientationLeft:
        case UIImageOrientationLeftMirrored:
        case UIImageOrientationRight:
        case UIImageOrientationRightMirrored:
            CGContextDrawImage(ctx, CGRectMake(0,0,srcImg.size.height,srcImg.size.width), srcImg.CGImage);
            break;
            
        default:
            CGContextDrawImage(ctx, CGRectMake(0,0,srcImg.size.width,srcImg.size.height), srcImg.CGImage);
            break;
    }
    
    CGImageRef cgimg = CGBitmapContextCreateImage(ctx);
    UIImage *img = [UIImage imageWithCGImage:cgimg];
    CGContextRelease(ctx);
    CGImageRelease(cgimg);
    return img;
}


+ (NSString *)trim:(NSString *)val trimCharacterSet:(NSCharacterSet *)characterSet {
    NSString *returnVal = @"";
    if (val) {
        returnVal = [val stringByTrimmingCharactersInSet:characterSet];
    }
    return returnVal;
}
+ (NSString *)trimWhitespace:(NSString *)val {
    return [self trim:val trimCharacterSet:[NSCharacterSet whitespaceCharacterSet]]; //去掉前后空格
}
+ (NSString *)trimNewline:(NSString *)val {
    return [self trim:val trimCharacterSet:[NSCharacterSet newlineCharacterSet]]; //去掉前后回车符
}
+ (NSString *)trimWhitespaceAndNewline:(NSString *)val {
    return [self trim:val trimCharacterSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]; //去掉前后空格和回车符
}


@end
