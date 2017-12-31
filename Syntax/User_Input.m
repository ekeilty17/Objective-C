//
//  main.m
//  User Input
//
//  Created by Eric Keilty on 6/23/14.
//  Copyright (c) 2014 Eric. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    //input users input as an integer
    int age;
    printf("What is your age: ");
    scanf("%i", &age);
    NSLog(@"%i", age);
    
    //input users input as a string
    char str[2048];
    printf("What is your name: ");
    scanf("%s", str);
    NSLog(@"%s", str);
    
    //input user input as a NSString object
    char cString[2048];
    NSLog(@"What is your name: ");
    scanf("%s", cString);
    NSString *myString = [NSString stringWithCString:cString encoding: NSASCIIStringEncoding];
    NSLog(@"%@", myString);
    
    return 0;
}