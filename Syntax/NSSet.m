//
//  main.m
//  NSSets (objc)
//
//  Created by Eric Keilty on 10/12/14.
//  Copyright (c) 2014 objc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    //just a random set of objects
    NSSet *myFirstSet = [NSSet setWithObjects:@1, @2, @3, nil];
    //doesn't print in order (based on how easy it is for system to retrieve them)
    NSLog(@"%@", myFirstSet);
    
    
    //turn an array into a set
    NSArray *originalSixAlpha = @[@"Black Hawks", @"Bruins", @"Canadians", @"Maple Leafs", @"Rangers", @"Red Wings"];
    //prints in alphabetical order
    NSLog(@"%@", originalSixAlpha);
    
    NSSet *originalSixRandom = [NSSet setWithArray:originalSixAlpha];
    //prints in random order
    NSLog(@"%@", originalSixRandom);
    
    
    //sets have fast enumeration (finding the number of objects)
    NSSet *band = [NSSet setWithObjects:@"Singer", @"Guitar", @"Drummer", @"Bass", nil];
    //print the number of elements
    NSLog(@"The band has %li people in it", [band count]);
    //print each item individually (not in order)
    for (id item in band)
    {
        NSLog(@"%@", item);
    }
    
    
    //combining sets
    NSSet *sportsQuit = [NSSet setWithObjects:@"Soccer", @"Basketball", @"Baseball", nil];
    NSSet *sportsStillPlay = [NSSet setWithObjects:@"Golf", @"Hockey", @"Lacrosse", nil];
    NSSet *sportsPlayed = [sportsQuit setByAddingObjectsFromSet:sportsStillPlay]; //sets could be reversed
    NSLog(@"%@", sportsPlayed);
    
    
    //NSMutableSet
    NSMutableSet *hockeySticks = [NSMutableSet setWithCapacity:2];
    [hockeySticks addObject:@"APEX"]; //game stick
    [hockeySticks addObject:@"AI9"]; //back-up
    NSLog(@"%@", hockeySticks);
    [hockeySticks removeObject:@"APEX"]; //game stick broke
    [hockeySticks addObject:@"RBZ Stage 2"]; //got a new stick
    NSLog(@"%@", hockeySticks);
    
    
    //Set Operations (I'm sure there are more)
    NSSet *japaneseMakes = [NSSet setWithObjects:@"Honda", @"Nissan",
                            @"Mitsubishi", @"Toyota", nil];
    NSSet *johnsFavoriteMakes = [NSSet setWithObjects:@"Honda", nil];
    NSSet *marysFavoriteMakes = [NSSet setWithObjects:@"Toyota",
                                 @"Alfa Romeo", nil];
    
    NSMutableSet *result = [NSMutableSet setWithCapacity:5];
    // Union
    [result setSet:johnsFavoriteMakes];
    [result unionSet:marysFavoriteMakes];
    NSLog(@"Either John's or Mary's favorites: %@", result); //both John and Mary
    // Intersection
    [result setSet:johnsFavoriteMakes];
    [result intersectSet:japaneseMakes];
    NSLog(@"John's favorite Japanese makes: %@", result); //what John and Mary have in common
    // Relative Complement
    [result setSet:japaneseMakes];
    [result minusSet:johnsFavoriteMakes];
    NSLog(@"Japanese makes that are not John's favorites: %@", //what Japan makes that John doesn't like
          result);
    
    
    //NSCountedSet
    NSCountedSet *ages = [NSCountedSet setWithObjects:@12, @14, @15, @15, @14, @12, @15, @15, @14, @12, @15, @14, nil];
    NSLog(@"There are %li twleve year olds", [ages countForObject:@12]);
    NSLog(@"There are %li thirteen year olds", [ages countForObject:@13]);
    NSLog(@"There are %li fourteen year olds", [ages countForObject:@14]);
    NSLog(@"There are %li fifteen year olds", [ages countForObject:@15]);
    
    return 0;
}
