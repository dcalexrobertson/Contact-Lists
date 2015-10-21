//
//  ContactLists.m
//  Contact Lists
//
//  Created by Alex on 2015-10-20.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "ContactLists.h"
#import "Contact.h"

@implementation ContactLists

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addContact:(Contact *)newContact
{
    [self.contacts addObject:newContact];
}

- (void)printContacts
{
    for (int i = 0; i < [self.contacts count]; i++) {
        
        Contact *listContact = self.contacts[i];
        NSLog(@"\n%i: %@ (%@)", i, listContact.name, listContact.email);
    }
}

- (void)showContact:(int)ID
{
    if (ID <= [self.contacts count] - 1) {
        
        Contact *listContact = self.contacts[ID];
        NSLog(@"%i: %@ (%@)", ID, listContact.name, listContact.email);
        
    } else {
        
        NSLog(@"That is not a valid entry.");
        
    }
}


@end
