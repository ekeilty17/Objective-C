//
//  main.m
//  Hapy Number Improved
//
//  Created by Eric Keilty on 8/19/14.
//  Copyright (c) 2014 Eric. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    char firstStrNum[100];
    NSLog(@"enter a number: ");
    scanf("%s", firstStrNum);
    
    NSMutableString *firstNSStrNum = [NSMutableString stringWithCString:firstStrNum encoding: NSASCIIStringEncoding];
    int firstIntNum = [firstNSStrNum intValue];
    
    if (firstIntNum < 1)
    {
        NSLog(@"sorry, the number needs to be greater than 0");
    }
    else if (firstIntNum == 1)
    {
        NSLog(@"1 is a HAPPY number");
    }
    else
    {
        //NSLog(@"%i ->", firstIntNum);
        int newHappyNum = firstIntNum;
        int counter = 0;
        NSMutableString *NSStrNum = firstNSStrNum;
        
        while (counter == 0)
        {
            if (newHappyNum == 1)
            {
                NSLog(@"1 ->");
                NSLog(@"1");
                NSLog(@" ");
                NSLog(@"%i is a HAPPY number", firstIntNum);
                counter += 1;
            }
            else if (newHappyNum == 4 || newHappyNum == 16 || newHappyNum == 37 || newHappyNum == 58 || newHappyNum == 89 || newHappyNum == 145 || newHappyNum == 42 || newHappyNum == 20)
            {
                int counter2 = 0;
                NSLog(@"%i ->", newHappyNum);
                NSLog(@" ");
                while (counter2 < 9)
                {
                    newHappyNum = 0;
                    NSMutableArray *digits = [[NSMutableArray alloc] init];
                    
                    for (int i = 0; i < NSStrNum.length; i++)
                    {
                        [digits addObject:[NSStrNum substringWithRange:NSMakeRange(i, 1)]];
                        newHappyNum += pow([digits[i] intValue], 2);
                    }
                    
                    NSStrNum = [[NSMutableString alloc] initWithFormat:@"%d", newHappyNum];
                    [digits removeAllObjects];
                    counter2 += 1;
                    NSLog(@"%i ->", newHappyNum);
                }
                NSLog(@" ");
                NSLog(@"%i is a MELANCOIL number", firstIntNum);
                counter += 1;
            }
            else
            {
                NSLog(@"%i ->", newHappyNum);
                newHappyNum = 0;
                NSMutableArray *digits = [[NSMutableArray alloc] init];
                
                for (int i = 0; i < NSStrNum.length; i++)
                {
                    [digits addObject:[NSStrNum substringWithRange:NSMakeRange(i, 1)]];
                    newHappyNum += pow([digits[i] intValue], 2);
                }
                
                NSStrNum = [[NSMutableString alloc] initWithFormat:@"%d", newHappyNum];
                [digits removeAllObjects];
            }
        }
    }

    return 0;
}

