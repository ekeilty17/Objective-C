//
//  main.m
//  Happy Numbers
//
//  Created by Eric Keilty on 8/12/14.
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
        NSLog(@"%i ->", firstIntNum);
        int newHappyNum = 0;
        int counter = 0;
        NSMutableString *NSStrNum = firstNSStrNum;
        
        while (counter == 0)
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
            
            if (newHappyNum == 1)
            {
                NSLog(@"1");
                NSLog(@" ");
                NSLog(@"%i is a HAPPY number", firstIntNum);
                counter += 1;
            }
            else if (newHappyNum == 4)
            {
                NSLog(@" ");
                NSLog(@"4 ->");
                NSLog(@"16 ->");
                NSLog(@"37 ->");
                NSLog(@"58 ->");
                NSLog(@"89 ->");
                NSLog(@"145 ->");
                NSLog(@"42 ->");
                NSLog(@"20 ->");
                NSLog(@"4");
                NSLog(@" ");
                NSLog(@"%i is a MELANCOIL number", firstIntNum);
                counter += 1;
            }
            else if (newHappyNum == 16)
            {
                NSLog(@" ");
                NSLog(@"16 ->");
                NSLog(@"37 ->");
                NSLog(@"58 ->");
                NSLog(@"89 ->");
                NSLog(@"145 ->");
                NSLog(@"42 ->");
                NSLog(@"20 ->");
                NSLog(@"4 ->");
                NSLog(@"16");
                NSLog(@" ");
                NSLog(@"%i is a MELANCOIL number", firstIntNum);
                counter += 1;
            }
            else if (newHappyNum == 37)
            {
                NSLog(@" ");
                NSLog(@"37 ->");
                NSLog(@"58 ->");
                NSLog(@"89 ->");
                NSLog(@"145 ->");
                NSLog(@"42 ->");
                NSLog(@"20 ->");
                NSLog(@"4 ->");
                NSLog(@"16 ->");
                NSLog(@"37");
                NSLog(@" ");
                NSLog(@"%i is a MELANCOIL number", firstIntNum);
                counter += 1;
            }
            else if (newHappyNum == 58)
            {
                NSLog(@" ");
                NSLog(@"58 ->");
                NSLog(@"89 ->");
                NSLog(@"145 ->");
                NSLog(@"42 ->");
                NSLog(@"20 ->");
                NSLog(@"4 ->");
                NSLog(@"16 ->");
                NSLog(@"37 ->");
                NSLog(@"58");
                NSLog(@" ");
                NSLog(@"%i is a MELANCOIL number", firstIntNum);
                counter += 1;
            }
            else if (newHappyNum == 89)
            {
                NSLog(@" ");
                NSLog(@"89 ->");
                NSLog(@"145 ->");
                NSLog(@"42 ->");
                NSLog(@"20 ->");
                NSLog(@"4 ->");
                NSLog(@"16 ->");
                NSLog(@"37 ->");
                NSLog(@"58 ->");
                NSLog(@"89");
                NSLog(@" ");
                NSLog(@"%i is a MELANCOIL number", firstIntNum);
                counter += 1;
            }
            else if (newHappyNum == 145)
            {
                NSLog(@" ");
                NSLog(@"145 ->");
                NSLog(@"42 ->");
                NSLog(@"20 ->");
                NSLog(@"4 ->");
                NSLog(@"16 ->");
                NSLog(@"37 ->");
                NSLog(@"58 ->");
                NSLog(@"89 ->");
                NSLog(@"145");
                NSLog(@" ");
                NSLog(@"%i is a MELANCOIL number", firstIntNum);
                counter += 1;
            }
            else if (newHappyNum == 42)
            {
                NSLog(@" ");
                NSLog(@"42 ->");
                NSLog(@"20 ->");
                NSLog(@"4 ->");
                NSLog(@"16 ->");
                NSLog(@"37 ->");
                NSLog(@"58 ->");
                NSLog(@"89 ->");
                NSLog(@"145 ->");
                NSLog(@"42");
                NSLog(@" ");
                NSLog(@"%i is a MELANCOIL number", firstIntNum);
                counter += 1;
            }
            else if (newHappyNum == 20)
            {
                NSLog(@" ");
                NSLog(@"20 ->");
                NSLog(@"4 ->");
                NSLog(@"16 ->");
                NSLog(@"37 ->");
                NSLog(@"58 ->");
                NSLog(@"89 ->");
                NSLog(@"145 ->");
                NSLog(@"42");
                NSLog(@"20");
                NSLog(@" ");
                NSLog(@"%i is a MELANCOIL number", firstIntNum);
                counter += 1;
            }
            else
            {
                NSLog(@"%i ->", newHappyNum);
            }
        }

    }
    
        return 0;
}