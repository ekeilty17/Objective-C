//
//  main.m
//  Constants (objc)
//
//  Created by Eric Keilty on 6/20/14.
//  Copyright (c) 2014 Eric. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    //Define Constants
    #define aDefineInt 42
    #define aDefineFloat 42.00
    
    //Variable Constants
    const int aConstInt = 24;
    const float aConstFloat = .15;
    
    NSLog(@"aDefineInt = %i", aDefineInt);
    NSLog(@"aDefineFloat = %.2f", aDefineFloat);
    
    NSLog(@"aConstInt = %i", aConstInt);
    NSLog(@"aConstFloat = %.2f", aConstFloat);
    
    float tax = 12.00 * aConstFloat;
    NSLog(@"The tax = %.2f", tax);
    
    NSLog(@"A \"\\backslash with a double quote\" \
on two lines"); //need to have it all the way back up, or else it wont be together
    
    return 0;
}