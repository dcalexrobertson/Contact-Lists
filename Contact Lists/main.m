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
            
            NSString* input = [inputCollector inputForPrompt:@"\nWhat would you like to do next?\n\n new - Create a new contact\n list - List all contacts\n quit - Exit Application \n show - Show contact \n find - Search for Contact\n history - Print Last 3 Commands"];
            
            if ([input isEqualToString:@"quit"]) {
                
                NSLog(@"Goodbye.");
                break;
                
            } else if ([input isEqualToString:@"new"]) {
                
                BOOL alreadyExists = NO;
                
                NSString *email = [inputCollector inputForPrompt:@"Please enter email:"];
                
                for (Contact *contact in contactList.contacts) {
                    if ([contact.email isEqualTo:email]) {
                        NSLog(@"That email is already in your contact list");
                        alreadyExists = YES;
                    }
                }
                
                if (!alreadyExists) {
                    
                    NSString *fullName = [inputCollector inputForPrompt:@"Please enter full name:"];
                    
                    
                    Contact *contact = [[Contact alloc] init];
                    contact.name = fullName;
                    contact.email = email;
                    
                    [contactList addContact:contact];
    
                    while (true) {
                        
                        NSString *phoneNumber = [inputCollector inputForPrompt:@"Please enter your phone number"];
                        NSString *phoneNumberType = [inputCollector inputForPrompt:@"Is this a work, home, or cell number?"];
                        
                        
                        if (!contact.phoneNumbers) {
                            
                            contact.phoneNumbers = [NSMutableDictionary dictionaryWithObject:phoneNumber forKey:phoneNumberType];

                        } else {
                            
                            [contact.phoneNumbers setObject:phoneNumber forKey:phoneNumberType];
                            
                        }
                        
                        NSString *moreNumbers = [inputCollector inputForPrompt:@"Would you like to enter another number? (yes or no)"];
                        
                        if ([moreNumbers isEqualToString:@"no"]) {
                            NSLog(@"You're entry has been added.");
                            break;
                        } else if ([moreNumbers isEqualToString:@"yes"]) {
                            
                        } else {
                            NSLog(@"That is not a valid entry.");
                        }
                        
                    }
                    
                    
                }
                
                
            } else if ([input isEqualToString:@"list"]) {
                
                [contactList printContacts];
                
            } else if ([input isEqualToString:@"show"]) {
                
                NSString *ID = [inputCollector inputForPrompt:@"Please enter ID number:"];
                int IDint = [ID intValue];
                
                [contactList showContact:IDint];
                
            } else if([input isEqualToString:@"find"]) {
                
                NSString *searchTerm = [inputCollector inputForPrompt:@"Please enter the name of the contact you are trying to find:"];
                
                [contactList findContact:searchTerm];
                
            } else if ([input isEqualToString:@"history"]) {
                
                NSLog(@"%@", inputCollector.history);
                
            } else {
                
                NSLog(@"That is not a valid entry.");
                
            }
        }
        
    }
    return 0;
}
