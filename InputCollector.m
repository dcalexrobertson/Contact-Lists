//
//  InputCollector.m
//  Contact Lists
//
//  Created by Alex on 2015-10-20.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString
{
    NSLog(promptString);
    
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    
    NSString *input0 = [NSString stringWithUTF8String:inputChars];
    NSString *input = [input0 stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    NSLog(@"%@", input);
    
    return input;
}

@end
