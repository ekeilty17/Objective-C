//
//  main.m
//  ints and floats (objc)
//
//  Created by Eric Keilty on 6/19/14.
//  Copyright (c) 2014 Eric. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    //integers
    int a;
    int b;
    int c;
    
    a = 1;
    b = 2;
    c = a + b;
    
    NSLog(@"a + b = %i", c); // its %i because c is an integer
    NSLog(@"a + b = %i", a + b); //can add things with the %
    NSLog(@"a %% b = %i", a % b); //when printing the % have to use 2
    
    //floats
    float d = 3.5;
    float e = 3.5e1;  //like scientific notation but
    float f = 3.5e-1; //e = 10 and the number after it is the exponent
    
    NSLog(@"d = %.3f", d);  //.3 says how many significant digits
    NSLog(@"e = %f", e);  //needs to be %f
    NSLog(@"f = %f", f);  //because its a float
    
    return 0;

}

