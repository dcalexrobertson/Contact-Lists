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
        _contactlist = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addContact:(Contact *)newContact
{
    [self.contactlist addObject:newContact];
}

- (void)printContacts
{
    for (int i = 0; i < [self.contactlist count]; i++) {
        
        Contact *listContact = self.contactlist[i];
        NSLog(@"\n%i: %@ (%@)", i, listContact.name, listContact.email);
    }
}

@end
