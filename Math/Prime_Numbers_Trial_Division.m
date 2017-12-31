//
//  main.m
//  Prime Number Checker (the easy way)
//
//  Created by Eric Keilty on 8/11/14.
//  Copyright (c) 2014 Eric. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    int factorial = 1;
    
    int num;
    NSLog(@"enter a prime number: ");
    scanf("%i", &num);
    
    if (num < 2)
    {
        NSLog(@"%i is NOT a prime number", num);
    }
    else
    {
        for (int i = 2; i < num; i++)
        {
            factorial *= i;
        }
        NSLog(@"factorial = %i", factorial);
        if (((factorial + 1) % num) == 0)
        {
            NSLog(@"%i IS a prime number", num);
        }
        else
        {
            NSLog(@"%i is NOT a prime number", num);
        }
    }
    
    return 0;
}