//
//  main.m
//  The Simplest Impossible Problem Mod
//
//  Created by Eric Keilty on 8/18/14.
//  Copyright (c) 2014 Eric. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    int firstNum;
    NSLog(@"enter a number: ");
    scanf("%i", &firstNum);
    
    int counter = 0;
    
    if (firstNum == 1)
    {
        NSLog(@"1");
        NSLog(@"0 steps to complete");
    }
    else if (firstNum < 1)
    {
        NSLog(@"Sorry, the number has to be greater than 0");
    }
    else
    {
        NSLog(@"%i ->", firstNum);
        int num = firstNum;
        while (num != 1)
        {
            if (num % 2 == 0)
            {
                num /= 2;
                counter += 1;
            }
            else
            {
                num = ((3 * num) - 1);
                counter += 1;
            }
            
            if (num == 1)
            {
                NSLog(@"1");
            }
            else
            {
                NSLog(@"%i ->", num);
            }
        }
        NSLog(@" ");
        NSLog(@"%i steps to complete", counter);
    }
    
    return 0;
}

