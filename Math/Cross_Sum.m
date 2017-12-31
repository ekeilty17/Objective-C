//
//  main.m
//  Cross Sum
//
//  Created by Eric Keilty on 8/15/14.
//  Copyright (c) 2014 Eric. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    char StrNum[100];
    NSLog(@"enter a number: ");
    scanf("%s", StrNum);
    
    NSMutableString *NSStrNum = [NSMutableString stringWithCString:StrNum encoding: NSASCIIStringEncoding];
    int IntNum = [NSStrNum intValue];
    
    if (IntNum < 1)
    {
        NSLog(@"sorry, the number needs to be greater than 0");
    }
    else if (IntNum == 1)
    {
        NSLog(@"1");
        NSLog(@"= 1");
        NSLog(@" ");
        NSLog(@"1's cross sum is technically NOT prime");
        NSLog(@"1 is TECHNICALLY divisible by 1 (its cross sum)");
    }
    else
    {
        int crossSum = 0;
        NSMutableArray *digits = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < NSStrNum.length; i++)
        {
            [digits addObject:[NSStrNum substringWithRange:NSMakeRange(i, 1)]];
            crossSum += [digits[i] intValue];
            if (i == (NSStrNum.length - 1))
            {
                NSLog(@"%i", [digits[i] intValue]);
                NSLog(@"= %i", crossSum);
                NSLog(@" ");
            }
            else
            {
                NSLog(@"%i +", [digits[i] intValue]);
            }
        }
        
        //check to see if prime
        int counter = 2;;
        if (crossSum < 2)
        {
            NSLog(@"%i's cross sum is NOT a prime number", IntNum);
        }
        else if (crossSum == 2)
        {
            NSLog(@"%i's cross sum is NOT a prime number", IntNum);
        }
        else if ((crossSum % 2) == 0)
        {
            NSLog(@"%i's cross sum IS a prime number", IntNum);
        }
        else
        {
            for (int i = 2; i < ((crossSum + 1)/2); i++)
            {
                if ((crossSum % i) == 0)
                {
                    NSLog(@"%i's cross sum is NOT a prime number", IntNum);
                    break;
                }
                counter += 1;
            }
            if (counter == (crossSum + 1)/2)
            {
                NSLog(@"%i's cross sum IS a prime number", IntNum);
            }
        }
        
        //check to see if divisable
        if ((IntNum % crossSum) == 0)
        {
            NSLog(@"%i IS divisible by %i (its cross sum)", IntNum, crossSum);
        }
        else
        {
            NSLog(@"%i is NOT divisible by %i (its cross sum)", IntNum, crossSum);
        }
    }
    return 0;
}