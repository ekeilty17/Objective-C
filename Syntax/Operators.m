//
//  main.m
//  Operators
//
//  Created by Eric Keilty on 6/19/14.
//  Copyright (c) 2014 Eric. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    //+=, -=, *=, /=, %=
    int a = 3;
    int b = 4;
    
    NSLog(@"a += b, a = %i", a += b);
    NSLog(@"a *= b, a = %i", a *=b);
    
    //++a, a++, --a, a--
    int c = 2;
    
    NSLog(@"c++ = %i", c++);
    NSLog(@"c = %i", c);
    
    c = 2; //don't need to reasign c to an integer
    
    NSLog(@"++c = %i", ++c);
    NSLog(@"c = %i", c);
    
    c = 2;
    
    NSLog(@"c-- = %i", c--);
    NSLog(@"c = %i", c);
    
    c = 2;
    
    NSLog(@"--c = %i", --c);
    NSLog(@"c = %i", c);
    
    //comma operator
    int d;
    int e;
    
    d = (e = 3, e + 2);
    NSLog(@"d = %i", d);
    NSLog(@"e = %i", e);
    
    //Cast Opperater (changing variable type)
    float floatVariable = 56.7;
    int integerVariable;
    integerVariable = (int)floatVariable;
    
    NSLog(@"floatVarible = %f", floatVariable);
    NSLog(@"integerVarible = %i", integerVariable);
    
    //Sizeof Operator
    NSLog(@"int = %lu bytes", sizeof(int)); //I'm pretty sure lu has to be used because its a function
    NSLog(@"unsigned int = %lu bytes", sizeof(unsigned int));
    NSLog(@"float = %lu bytes", sizeof(float)); //cant be unsigned
    NSLog(@"char = %lu bytes", sizeof(char));
    NSLog(@"unsinged char = %lu bytes", sizeof(unsigned char));
    NSLog(@"double = %lu bytes", sizeof(double)); //can't be unsigned
    NSLog(@"short = %lu bytes", sizeof(short));
    NSLog(@"unsigned short = %lu bytes", sizeof(unsigned short));
    NSLog(@"long = %lu bytes", sizeof(long));
    NSLog(@"unsigned long = %lu bytes", sizeof(unsigned long));
    NSLog(@"long long = %lu bytes", sizeof(long long));
    NSLog(@"unsigned long long = %lu bytes", sizeof(unsigned long long));
    NSLog(@"bool = %lu bytes", sizeof(bool)); //can't be unsigned (really 0 bytes)
    
    return 0;

}

