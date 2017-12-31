//
//  main.m
//  Get the Next Prime
//
//  Created by Eric Keilty on 8/15/14.
//  Copyright (c) 2014 Eric. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    char String1[2048];
    NSLog(@"do you want to SKIP to the nth prime, a LIST of the primes from x to y, get a secific prime NUMBER, or NEITHER?");
    scanf("%s", String1);
    NSString *option = [NSString stringWithCString:String1 encoding: NSASCIIStringEncoding];
    
    int outerMostCounter = 0;
    NSMutableArray *primeList = @[].mutableCopy;
    NSMutableArray *primeGaps = @[].mutableCopy;
    while (outerMostCounter == 0)
    {
        NSString *stringPrime;
        if ([option.lowercaseString isEqualToString:@"skip"])
        {
            int newPrime;
            NSLog(@"enter a starting number: ");
            scanf("%i", &newPrime);
            
            int nthPrime;
            NSLog(@"How many primes do you want to skip?");
            scanf("%i", &nthPrime);
            
            int fakeCounter = 0;
            while (fakeCounter == 0)
            {
                int realCounter = 0;
                while (realCounter != nthPrime)
                {
                    newPrime += 1;
                    int counter = 2;
                    if (newPrime == 2)
                    {
                        realCounter += 1;
                    }
                    else if ((newPrime % 2) == 0)
                    {
                    }
                    else
                    {
                        for (int i = 2; i < (floor(sqrt(newPrime)) + 1); i++)
                        {
                            if ((newPrime % i) == 0)
                            {
                                break;
                            }
                            counter += 1;
                        }
                        if (counter == (floor(sqrt(newPrime)) + 1))
                        {
                            realCounter += 1;
                        }
                    }
                }
                NSLog(@"Next Prime: %i", newPrime);
                
                int freakingCounters = 0;
                while (freakingCounters ==0)
                {
                    char String3[2048];
                    NSLog(@"number of primes to skip: ");
                    scanf("%s", String3);
                    stringPrime = [NSString stringWithCString:String3 encoding: NSASCIIStringEncoding];
                    if ([stringPrime integerValue] == 0 && [stringPrime isNotEqualTo:@"0"])
                    {
                        if ([stringPrime.lowercaseString isEqualToString:@"new"])
                        {
                            freakingCounters += 1;
                            realCounter += 1;
                            fakeCounter += 1;
                        }
                        else if ([stringPrime.lowercaseString isEqualToString:@"done"])
                        {
                            freakingCounters += 1;
                            realCounter += 1;
                            fakeCounter += 1;
                        }
                        else
                        {
                            NSLog(@"didn't know what you meant there, try again");
                        }
                    }
                    else
                    {
                        nthPrime = [stringPrime integerValue];
                        freakingCounters += 1;
                    }
                }
            }
        }
        else if ([option.lowercaseString isEqualToString:@"list"])
        {
            int x;
            NSLog(@"lower bound: ");
            scanf("%i", &x);
            
            int y;
            NSLog(@"upper bound: ");
            scanf("%i", &y);
            
            int numOfTimes = y - x + 1;
            int newPrime = x - 1;
            
            [primeList removeAllObjects];
            
            int realCounter = 0;
            while (realCounter != numOfTimes)
            {
                newPrime += 1;
                int counter = 2;
                if (newPrime == 2)
                {
                    NSNumber *NSPrime = [[NSNumber alloc] initWithInt:newPrime];
                    [primeList addObject: NSPrime];
                }
                else if ((newPrime % 2) == 0 || newPrime == 1)
                {
                }
                else
                {
                    for (int i = 2; i < (floor(sqrt(newPrime)) + 1); i++)
                    {
                        if ((newPrime % i) == 0)
                        {
                            break;
                        }
                        counter += 1;
                    }
                    if (counter == (floor(sqrt(newPrime)) + 1))
                    {
                        NSNumber *NSPrime = [[NSNumber alloc] initWithInt:newPrime];
                        [primeList addObject: NSPrime];
                    }
                }
                realCounter += 1;
            }
            for (int i = 0; i < primeList.count; i++)
            {
                NSLog(@"%@", primeList[i]);
            }
            
            [primeGaps removeAllObjects];
            for (int i = 0; i < (primeList.count - 1); i++)
            {
                int gap = [primeList[i + 1] intValue] - [primeList[i] intValue];
                NSNumber *NSGap = [[NSNumber alloc] initWithInt:gap];
                [primeGaps addObject:NSGap];
            }
        }
        else if ([option.lowercaseString isEqualToString:@"number"])
        {
            int nthPrime;
            NSLog(@"Number of prime: ");
            scanf("%i", &nthPrime);
            
            int newPrime = 1;
            
            int fakeCounter = 0;
            while (fakeCounter == 0)
            {
                int realCounter = 0;
                while (realCounter != nthPrime)
                {
                    newPrime += 1;
                    int counter = 2;
                    if (newPrime == 2)
                    {
                        realCounter += 1;
                    }
                    else if ((newPrime % 2) == 0)
                    {
                    }
                    else
                    {
                        for (int i = 2; i < (floor(sqrt(newPrime)) + 1); i++)
                        {
                            if ((newPrime % i) == 0)
                            {
                                break;
                            }
                            counter += 1;
                        }
                        if (counter == (floor(sqrt(newPrime)) + 1))
                        {
                            realCounter += 1;
                        }
                    }
                }
                NSLog(@"prime number %i is %i", nthPrime, newPrime);
                
                int omfgCounter = 0;
                while (omfgCounter == 0)
                {
                    char String4[2048];
                    NSLog(@"Number of prime: ");
                    scanf("%s", String4);
                    NSString *option2 = [NSString stringWithCString:String4 encoding: NSASCIIStringEncoding];
                    
                    if ([option2 integerValue] == 0 && [option2 isNotEqualTo:@"0"] && [option2.lowercaseString isNotEqualTo:@"done"])
                    {
                        NSLog(@"didn't know what you meant there, try again");
                    }
                    else if ([option2.lowercaseString isEqualToString:@"done"])
                    {
                        omfgCounter += 1;
                        fakeCounter += 1;
                    }
                    else
                    {
                        nthPrime = [option2 integerValue];
                        omfgCounter += 1;
                    }
                }
            }
        }
        else if ([option.lowercaseString isEqualToString:@"neither"])
        {
            NSLog(@"Well I guess primes aren't for everyone");
            NSLog(@"PS if you don't like primes you're a loser");
        }
        else
        {
            NSLog(@"didn't know what you meant there, try again");
        }
        
        int yetAnotherCounter;
        if ([stringPrime isEqualToString:@"new"])
        {
            yetAnotherCounter = 1;
        }
        else
        {
            yetAnotherCounter = 0;
        }
        
        while (yetAnotherCounter == 0)
        {
            char String2[2048];
            NSLog(@"SKIP, LIST, or NUMBER");
            scanf("%s", String2);
            NSString *newOption = [NSString stringWithCString:String2 encoding: NSASCIIStringEncoding];
            
            if ([newOption.lowercaseString isEqualToString:@"skip"] || [newOption.lowercaseString isEqualToString:@"list"] || [newOption.lowercaseString isEqualToString:@"number"])
            {
                option = newOption;
                yetAnotherCounter += 1;
            }
            else if ([newOption.lowercaseString isEqualToString:@"gaps"] && [option.lowercaseString isEqualToString:@"list"])
            {
                NSLog(@"%@", primeList[0]);
                for (int i = 0; i < (primeList.count - 1); i++)
                {
                    int numOfSpaces = floor(log10([primeList[i + 1] doubleValue]));
                    NSString *space = @" ";
                    NSString *totalSpaces = [@"" stringByPaddingToLength:numOfSpaces withString:space startingAtIndex:0];
                    
                    NSLog(@" %@+%@", totalSpaces, primeGaps[i]);
                    NSLog(@"%@", primeList[i + 1]);
                }
            }
            else if ([newOption.lowercaseString isEqualToString:@"done"])
            {
                yetAnotherCounter += 1;
                outerMostCounter += 1;
            }
            else
            {
                NSLog(@"didn't know what you meant there, try again");
            }
        }
    }
    return 0;
}
    
    
