//
//  main.m
//  Perfect Numbers
//
//  Created by Eric Keilty on 8/14/14.
//  Copyright (c) 2014 Eric. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    int perfectNum;
    NSLog(@"enter a number: ");
    scanf("%i", &perfectNum);
    
    int sumOfFactors = 0;
    NSMutableArray *factors = @[].mutableCopy;
    
    for (int i = 2; i < perfectNum; i++)
    {
        if (perfectNum % i == 0)
        {
            NSNumber *nsFactor = [[NSNumber alloc] initWithInt:i];
            [factors addObject: nsFactor];
            sumOfFactors += i;
        }
    }
    sumOfFactors += 1;
    
    NSLog(@"1 +");
    for (int j = 0; j < (factors.count - 1); j++)
    {
        NSLog(@"%@ +", factors[j]);
    }
    NSLog(@"%@ =", factors[factors.count - 1]);
    NSLog(@"%i", sumOfFactors);
    NSLog(@" ");
    
    if (sumOfFactors == perfectNum)
    {
        NSLog(@"%i IS a perfect number", perfectNum);
    }
    else
    {
        NSLog(@"%i is NOT a perfect number", perfectNum);
    }
    
    return 0;
}