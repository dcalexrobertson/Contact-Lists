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

@property (strong, nonatomic) NSMutableArray *contacts;

- (void)addContact:(Contact *)newContact;

- (void)printContacts;

- (void)showContact:(int)ID;

- (void)findContact:(NSString *)searchTerm;

@end
