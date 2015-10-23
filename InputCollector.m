//
//  InputCollector.m
//  Contact Lists
//
//  Created by Alex on 2015-10-20.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

- (instancetype)init
{
    self = [super init];
    if (self) {
        _history = [NSMutableArray arrayWithCapacity:3];
    }
    return self;
}

-(NSString *)inputForPrompt:(NSString *)promptString
{
    NSLog(@"%@",promptString);
    
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    
    NSString *input0 = [NSString stringWithUTF8String:inputChars];
    NSString *input = [input0 stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    NSLog(@"%@", input);
    
    if ([self.history count] < 3) {
        [self.history addObject:input];
    } else {
        [self.history removeObjectAtIndex:0];
        [self.history addObject:input];
    }
    
    return input;
}

@end
