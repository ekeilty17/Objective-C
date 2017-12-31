//
//  main.m
//  if else syntax (objc)
//
//  Created by Eric Keilty on 6/19/14.
//  Copyright (c) 2014 Eric. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    int a = 5;
    int b = 4;
    
    //either
    if (a != b){
        NSLog(@"a does not equal b");
    }
    else {
        NSLog(@"a equals b");
    }
    
    //or
    if (a != b) NSLog(@"a does not equal b");
    else NSLog(@"a equals b");
    
    
    return 0;

}

