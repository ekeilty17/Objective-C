//
//  main.m
//  NSArray (objc)
//
//  Created by Eric Keilty on 10/12/14.
//  Copyright (c) 2014 objc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    //old way
    NSArray *myFirstArray = [NSArray arrayWithObjects: @1, @2, @3, nil];
    NSLog(@"%@", myFirstArray); //in order!
    //new way
    NSArray *mySecondArray = @[@"one", @"two", @"three"];
    NSLog(@"%@", mySecondArray);
    
    NSLog(@"NSNumber = %@", [myFirstArray objectAtIndex:0]);
    NSLog(@"NSString = %@", [mySecondArray objectAtIndex:0]);
    
    
    //enumeration (finding the number of objects)
    NSArray *band = @[@"Singer", @"Guitar", @"Drummer", @"Bass"];
    //print the number of elements
    NSLog(@"The band has %li people in it", [band count]);
    //traditional
    for (int i=0; i<[band count]; i++)
    {
        NSLog(@"%d: %@", i, band[i]);
    }
    //fast-enumeration
    for (NSString *item in band)
    {
        NSLog(@"%@", item);
    }
    
    
    //combining arrays
    NSArray *sportsQuit = @[@"Soccer", @"Basketball", @"Baseball"];
    NSArray *sportsStillPlay = @[@"Golf", @"Hockey", @"Lacrosse"];
    NSArray *sportsPlayed1 = [sportsQuit arrayByAddingObjectsFromArray:sportsStillPlay]; //remember order matters now
    NSArray *sportsPlayed2 = [sportsStillPlay arrayByAddingObjectsFromArray:sportsQuit];
    NSLog(@"%@", sportsPlayed1); //Soccer first
    NSLog(@"%@", sportsPlayed2); //Golf first
    
    
    //NSMulatbleArrays
    NSMutableArray *hockeySticks = [[NSMutableArray alloc] initWithCapacity:1];
    [hockeySticks addObject:@"AI9"]; //back-up
    [hockeySticks insertObject:@"APEX" atIndex:0]; //game stick, want it to be first
    NSLog(@"%@", hockeySticks);
    [hockeySticks replaceObjectAtIndex:0 withObject:@"RBZ Stage 2"]; //got a new stick
    [hockeySticks removeLastObject]; //AI9 broke in practice
    [hockeySticks addObject:@"Total One"]; //got a new back-up stick
    NSLog(@"%@", hockeySticks);
    
    return 0;
}