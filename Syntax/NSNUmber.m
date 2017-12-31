//
//  main.m
//  NSNumber Syntax
//
//  Created by Eric Keilty on 7/26/14.
//  Copyright (c) 2014 Eric. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    //                *   replaces the "new" method   *  if it was the "new" method, the number would be initialized to zero
    NSNumber *anInt = [[NSNumber alloc] initWithInt: 10];
    
    //NSNumber = method to create object
    //anInteger = name of variable
    //[NSNumber alloc] = allocating memery for object (that's why when naming the object it has to be a pointer)
    //initWithInt = initializes the number to the data type integer
    
    NSNumber *aFloat = [[NSNumber alloc] initWithFloat: 20.5];
    NSNumber *aDouble = [[NSNumber alloc] initWithDouble: 30.25];
    NSNumber *aChar = [[NSNumber alloc] initWithChar: 'A'];
    NSNumber *aBool = [[NSNumber alloc] initWithBool: true];
    
    NSLog(@"anInt = %@", anInt);
    NSLog(@"aFloat = %@", aFloat);
    NSLog(@"aDouble = %@", aDouble);
    NSLog(@"aChar = %@", aChar); //this actually prints the number associated with the character
    NSLog(@"aBool = %@", aBool); //this prints the number associated with the bool (true = 1, false = 0)
    NSLog(@" ");
    
    //convert between types
    NSNumber *floatToInt = [[NSNumber alloc] initWithFloat: 10.5];
    NSLog(@"floatToInt = %@", floatToInt);
    
    [floatToInt intValue];
    NSLog(@"floatToInt = %@", floatToInt);
    
    //different way to create NSNumber
    NSNumber *oldWay = [[NSNumber alloc] initWithDouble: 10.00];
    
    NSNumber *newWay = [NSNumber numberWithDouble: 20.00]; //shorter but has memory management issues
    
    NSNumber *xcodesWay = @30.00; //a new way that xcodes recently added
    
    
    //adding with NSNumber
    NSNumber *sum = [NSNumber numberWithDouble: ([oldWay doubleValue] + [newWay doubleValue])]; //not very efficient
    
    //making an NSNumber have the same value as another NSNumber
    NSNumber *oldWayPlusNewWay = [NSNumber numberWithDouble:[sum doubleValue]];
    
    NSLog(@" ");
    NSLog(@"xcodesWay = %@", xcodesWay);
    NSLog(@"sum = %@", sum);
    NSLog(@"oldWayPlusNewWay = %@", oldWayPlusNewWay);
    
    
    return 0;
}

