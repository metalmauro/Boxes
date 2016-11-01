//
//  Box.h
//  Boxes
//
//  Created by Matthew Mauro on 2016-11-01.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic) float height;
@property (nonatomic) float width;
@property (nonatomic) float length;

-(instancetype) initWithHeight:(float)height andWidth: (float)width andLength: (float)length;

-(float)calculateVolume;

-(float)howManyWillFitIn:(Box *)testAgainst;

@end


