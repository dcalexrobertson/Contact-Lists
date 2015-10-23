//
//  InputCollector.h
//  Contact Lists
//
//  Created by Alex on 2015-10-20.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

@property (nonatomic) NSMutableArray *history;

-(NSString *)inputForPrompt:(NSString *)promptString;

@end
