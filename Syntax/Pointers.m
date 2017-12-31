//
//  main.m
//  Intro to Pointers (objc)
//
//  Created by Eric Keilty on 6/20/14.
//  Copyright (c) 2014 Eric. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    //Pointers
    int aninteger = 50;
    int *anIntPointer = &aninteger;
    
    NSLog(@"aninteger = %i", aninteger);         //prints the
    NSLog(@"*anIntPointer = %i", *anIntPointer); //value
    
    NSLog(@"anIntPointer = %i", anIntPointer);   //prints the location
    NSLog(@"&aninteger = %i", &aninteger);       //int the memery
    
    
    return 0;
}