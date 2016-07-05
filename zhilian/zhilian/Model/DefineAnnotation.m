//
//  DefineAnnotation.m
//  Relife
//
//  Created by 李 军 on 11-3-23.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DefineAnnotation.h"


@implementation DefineAnnotation

@synthesize imageName;

-(id) initWithCoordinate:(CLLocationCoordinate2D)theCoordinate andProp:(id)prop
{
	self = [super init];
	
	coordinate.latitude = theCoordinate.latitude;
	coordinate.longitude = theCoordinate.longitude;
     
	return self;
}

- (CLLocationCoordinate2D)coordinate
{
 	return coordinate;
}

-(NSString*) getReIdentifier
{
	return imageName;
}

 

@end
