//
//  ContactLists.h
//  Contact Lists
//
//  Created by Alex on 2015-10-20.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Contact;

@interface ContactLists : NSObject

@property (strong, nonatomic) NSMutableArray *contactlist;

- (void)addContact:(Contact *)newContact;

- (void)printContacts;

@end
