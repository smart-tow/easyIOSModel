//
//  DefineAnnotation.h
//  Relife
//
//  Created by 李 军 on 11-3-23.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <EasyIOS/EasyIOS.h>
@interface DefineAnnotation : Model <MKAnnotation>{
	CLLocationCoordinate2D coordinate;
	@protected NSString *imageName;
    
    @package
    NSString *_title;
    NSString *_subtitle;

}

@property (nonatomic, readonly) NSString *imageName;

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;

-(id) initWithCoordinate:(CLLocationCoordinate2D)coordinate andProp:(id)prop;
-(NSString*) getReIdentifier;

@end
