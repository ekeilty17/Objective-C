//
//  main.m
//  Convert to Base 10 (obj c)
//
//  Created by Eric Keilty on 9/24/14.
//  Copyright (c) 2014 STA. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    char cString[2048];
    NSLog(@"enter a number: ");
    scanf("%s", cString);
    NSString *NSStrNum = [NSString stringWithCString:cString encoding: NSASCIIStringEncoding];
    
    int base;
    printf("enter the base: ");
    scanf("%i", &base);
    
    if (base < 1)
    {
        NSLog(@"A number system in base %i doesn't make any practical sense", base);
    }
    else if (base < 10)
    {
        int intNum = [NSStrNum integerValue];
        
        NSMutableArray *digits = [[NSMutableArray alloc] init];
        for (int i = 1; i <= NSStrNum.length; i++)
        {
            int intDigit = intNum % 10;
            NSNumber *NSDigit = [[NSNumber alloc]initWithInteger: intDigit];
            [digits addObject:NSDigit];
            intNum /= 10;
        }
        
        //apply base change formula
        int numInBase = 0;
        for (int i = 0; i < NSStrNum.length; i++)
        {
            numInBase += ([digits[i] integerValue]*(pow(base, i)));
        }
        NSLog(@"%i", numInBase);
    }
    else
    {
        NSDictionary *alphabet = @{
                              @"a":@10, @"b":@11, @"c":@12, @"d":@13, @"e":@14,
                              @"f":@15, @"g":@16, @"h":@17, @"i":@18, @"j":@19,
                              @"k":@20, @"l":@21, @"m":@22, @"n":@23, @"o":@24,
                              @"p":@25, @"q":@26, @"r":@27, @"s":@28, @"t":@29,
                              @"u":@30, @"v":@31, @"w":@32, @"x":@33, @"y":@34, @"z":@35
                              };
        
        NSMutableArray *digits = [[NSMutableArray alloc] init];
        for (int i = 0; i < NSStrNum.length; i++)
        {
            [digits addObject:[NSStrNum substringWithRange:NSMakeRange(i, 1)]];
        }
        
        int numInBase = 0;
        for (int i = (NSStrNum.length - 1); i >= 0; i--)
        {
            if (alphabet[[digits[i] lowercaseString]] == NULL)
            {
                numInBase += ([digits[i] integerValue]*(pow(base,((NSStrNum.length - 1) - i))));
            }
            else
            {
                numInBase += ([alphabet[[digits[i] lowercaseString]] integerValue]*(pow(base,((NSStrNum.length - 1) - i))));
            }
        }
        NSLog(@"%i", numInBase);
    }
    return 0;
}