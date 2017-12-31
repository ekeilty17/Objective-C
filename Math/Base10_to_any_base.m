//
//  main.m
//  Base 10 to any other base
//
//  Created by Eric Keilty on 7/2/15.
//  Copyright (c) 2015 Assembly. All rights reserved.
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
    
    NSNumber *NSIntNum = [[NSNumber alloc]initWithInteger: [NSStrNum integerValue]];
    NSString *tempNSStr = [NSString stringWithFormat:@"%@", NSIntNum];
    
    if (NSStrNum != tempNSStr){
        NSLog(@"it's suppose to be in base 10");
    }
    else
    {
        //setting up alphabet
        NSDictionary *alphabet = @{
                                   @10:@"A", @11:@"B", @12:@"C", @13:@"D", @14:@"E",
                                   @15:@"F", @16:@"G", @17:@"H", @18:@"I", @19:@"J",
                                   @20:@"K", @21:@"L", @22:@"M", @23:@"N", @24:@"O",
                                   @25:@"P", @26:@"Q", @27:@"R", @28:@"S", @29:@"T",
                                   @30:@"U", @31:@"V", @32:@"W", @33:@"X", @34:@"Y", @35:@"Z"
                                   };
    
        //actual base change
        int intNum = [NSStrNum integerValue];
        NSMutableArray *exponents = [[NSMutableArray alloc] init];
        NSMutableArray *coefficents = [[NSMutableArray alloc] init];
        
        while (intNum != 0)
        {
            bool rightExp = false;
            int e = 1;
            while (!rightExp)
            {
                if (pow(base, e) > intNum)
                {
                    int intDigit = (e - 1);
                    NSNumber *NSDigit = [[NSNumber alloc]initWithInteger: intDigit];
                    [exponents addObject:NSDigit];
                    
                    if ((e - 1) == 0)
                    {
                        [coefficents addObject:NSDigit];
                    }
                    
                    rightExp = true;
                }
                else
                {
                    e++;
                }
            }
            
            bool rightCoef = false;
            int c = 0;
            while (!rightCoef)
            {
                if ((c * pow(base, (e - 1))) > intNum)
                {
                    int intDigit = (c - 1);
                    NSNumber *NSDigit = [[NSNumber alloc]initWithInteger: intDigit];
                    [coefficents addObject:NSDigit];
                    
                    rightCoef = true;
                }
                else
                {
                    c++;
                }
            }
            intNum -= ((c - 1) * pow(base, (e - 1)));
        }
        
        for (int i = 0; i < coefficents.count; i++)
        {
            if ([coefficents[i] integerValue] > 9)
            {
                [coefficents replaceObjectAtIndex:i withObject: alphabet[coefficents[i]]];
            }
            else
            {
                [coefficents replaceObjectAtIndex:i withObject:[coefficents[i] stringValue]];
            }
        }
        
        NSString *numInBase = [coefficents componentsJoinedByString:@""];
        NSLog(@"%@", numInBase);
    }
    
    return 0;
}
