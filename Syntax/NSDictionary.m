//
//  main.m
//  NSDictionary (objc)
//
//  Created by Eric Keilty on 10/12/14.
//  Copyright (c) 2014 objc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    //old way
    NSDictionary *familyMembersAndAges = [NSDictionary dictionaryWithObjectsAndKeys:
                            [NSNumber numberWithInt:46], @"Mom",
                            [NSNumber numberWithInt:45], @"Dad",
                            [NSNumber numberWithInt:15], @"Me",
                            [NSNumber numberWithInt:13], @"Brother",
                            [NSNumber numberWithInt:6], @"Sister",
                            nil];
    NSLog(@"%@", familyMembersAndAges); //they don't print in order tho :/
    
    //new way
    NSDictionary *familyNamesAndAges = @{
                              @"Jen" : @46,
                              @"Peter" : @45,
                              @"Eric" : @15,
                              @"Matt" : @13,
                              @"Maya" : @6, //comma doesn't need to be there
                              };
    NSLog(@"%@", familyNamesAndAges);
    
    //from 2 arrays
    NSArray *familyMembers = @[@"Mom", @"Dad", @"Me", @"Brother", @"Sister"];
    NSArray *familyNames = @[@"Jen", @"Peter", @"Eric", @"Matt", @"Maya"];
    NSDictionary *familyMembersAndNames = [NSDictionary dictionaryWithObjects:familyMembers forKeys:familyNames];
    NSLog(@"%@", familyMembersAndNames); //still not in order
    
    
    //Accessing Values and Keys
    NSDictionary *numbers = @{
                              @"one" : @1,
                              @"two" : @2,
                              @"three" : @3,
                              @"also one" : @1
                              //Key : Value
                              };
    
    //getting values from keys
    NSLog(@"First Key = %@",[numbers objectForKey:@"one"]);
    
    //getting keys from values
    NSArray *numberKeys = [numbers allKeysForObject:@1]; //NOTE: will put all keys that have the value @1 in a the array
    NSLog(@"Keys with Values that are 1 = %@", [numberKeys componentsJoinedByString:@" and "]);
    
    
    //enumeration (fast way)
    NSDictionary *grades = @{
                            @"A" : @"90 - 100",
                            @"B" : @"80 - 89",
                            @"C" : @"70 - 79",
                            @"D" : @"60 - 69",
                            @"F" : @"0 - 59"
                            };
    NSLog(@"There are %ld available grades to earn", [grades count]);
    NSLog(@"The ranges are:");
    for (id key in grades) {
        NSLog(@"%@ = %@", grades[key], key); //unforunately this isn't in the same order
    }
    NSLog(@"Grade: %@", [grades allKeys]); //again sadly not in the same order
    NSLog(@"Ranges: %@", [grades allValues]); //but they are disordered in the same order (if that makes sense)
    
    
    //NSMutableDictionary
    //new way
    NSMutableDictionary *test = @{}.mutableCopy; //the mutablecopy thing also works when initializing NSMutable arrays
    //old way
    NSMutableDictionary *hockeySticks = [NSMutableDictionary
                                         dictionaryWithDictionary:@{
                                                                    @"Game Stick" : @"APEX",
                                                                    @"Back-up Stick" : @"AI9"
                                                                    }];
    NSLog(@"%@", hockeySticks);
    
    [hockeySticks setObject:@"APEX" forKey:@"Broken Stick"]; //old way (adding new key and value
    hockeySticks[@"Game Stick"] = @"RBZ Stage 2"; //new way (replaces the valie in the already existing key)
    [hockeySticks removeObjectForKey:@"Broken Stick"];
    NSLog(@"%@", hockeySticks);
    
    
    NSMutableDictionary *sportsQuit = @{
                                        @"Soccer" : @"Fall",
                                        @"Basketball" : @"Winter",
                                        @"Baseball" : @"Spring"
                                        }.mutableCopy;
    
    NSMutableDictionary *sportsStillPlay = @{
                                              @"Golf" : @"Fall",
                                              @"Hockey" : @"Winter",
                                              @"Lacrosse" : @"Spring"
                                              }.mutableCopy;
    NSMutableDictionary *sportsPlayed = [NSMutableDictionary new]; //a way to initialize dictionaries
    [sportsPlayed addEntriesFromDictionary:sportsQuit];
    [sportsPlayed addEntriesFromDictionary:sportsStillPlay];
    NSLog(@"%@", sportsPlayed);
    
    return 0;
}
