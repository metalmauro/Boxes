//
//  Box.m
//  Boxes
//
//  Created by Matthew Mauro on 2016-11-01.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import "Box.h"

@implementation Box

-(instancetype) initWithHeight:(float)height andWidth: (float)width andLength: (float)length
{
    self = [super init];
    if (self){
        _height = height;
        _width = width;
        _length = length;
    }
    return self;
}

-(float)calculateVolume
{
    float volume = self.width * self.length * self.height;
    return volume;
}

-(float)howManyWillFitIn:(Box *)testAgainst
{
    float volumeOne = [self calculateVolume];
    float volumeTwo = [testAgainst calculateVolume];
    
    float howMany = volumeOne / volumeTwo;
    
    return howMany;
}

@end
