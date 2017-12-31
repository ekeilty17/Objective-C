//
//  main.m
//  Prime Number Checker (the hard way)
//
//  Created by Eric Keilty on 7/4/14.
//  Copyright (c) 2014 Eric. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    int counter = 2;
    
    int primeNum;
    printf("enter a prime number: ");
    scanf("%i", &primeNum);
    
    if (primeNum < 2)
    {
        NSLog(@"%i is NOT a prime number", primeNum);
    }
    else if (primeNum == 2)
    {
        NSLog(@"%i IS a prime number", primeNum);
    }
    else if ((primeNum % 2) == 0)
    {
        NSLog(@"%i is NOT a prime number", primeNum);
    }
    else
    {
        for (int i = 2; i < (floor(sqrt(primeNum)) + 1); i++)
        {
            if ((primeNum % i) == 0)
            {
                NSLog(@"%i is NOT a prime number", primeNum);
                break;
            }
            counter += 1;
        }
        if (counter == (floor(sqrt(primeNum)) + 1))
        {
            NSLog(@"%i IS a prime number", primeNum);
        }
    }
    
    return 0;
}