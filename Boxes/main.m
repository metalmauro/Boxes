//
//  main.m
//  Boxes
//
//  Created by Matthew Mauro on 2016-11-01.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        Box *newBox = [[Box alloc]initWithHeight:5 andWidth:20 andLength:20];
        
        float roomVol = [newBox calculateVolume];
        NSLog(@"First Room's volume is: %f cubic feet", roomVol);
        
        Box *Second = [[Box alloc]initWithHeight:10 andWidth:40 andLength:50];
        float room2Vol = [Second calculateVolume];
        NSLog(@"Second Room's volume is: %f cubic feet", room2Vol);
        
        
        float howMany = [newBox howManyWillFitIn:Second];
        float printable = [[NSString stringWithFormat:@"%.2f",howMany]floatValue];
        
        NSLog(@"%f of the first boxes will fit in the second", printable);
        
        
    }
    return 0;
}
