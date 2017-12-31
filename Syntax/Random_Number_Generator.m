//
//  main.m
//  Generating a Random Number (objc)
//
//  Created by Eric Keilty on 11/4/14.
//  Copyright (c) 2014 objc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    //generating a random number from 1 to 10
    int randNum = ((arc4random() % 10) + 1);
    NSLog(@"%i", randNum);
    
    return 0;
}