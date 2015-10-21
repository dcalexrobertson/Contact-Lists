//
//  main.m
//  Contact Lists
//
//  Created by Alex on 2015-10-20.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactLists.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        InputCollector *inputCollector = [[InputCollector alloc] init];
        ContactLists *contactList = [[ContactLists alloc] init];
    
        while (true) {
            
            NSString* input = [inputCollector inputForPrompt:@"\nWhat would you like to do next?\n\n new - Create a new contact\n list - List all contacts\n quit - Exit Application"];
            
            if ([input isEqualToString:@"quit"]) {
                
                NSLog(@"Goodbye.");
                break;
                
            } else if ([input isEqualToString:@"new"]) {
                
                NSString *fullName = [inputCollector inputForPrompt:@"Please enter full name:"];
                NSString *email = [inputCollector inputForPrompt:@"Please enter email:"];
                
                Contact *contact = [[Contact alloc] init];
                contact.name = fullName;
                contact.email = email;
                
                [contactList addContact:contact];
                
            } else if ([input isEqualToString:@"list"]) {
                
                [contactList printContacts];
                
            } else {
                
                NSLog(@"That is not a valid entry.");
                
            }
        }
        
    }
    return 0;
}
