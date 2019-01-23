//
//  Book.m
//  BookManager
//
//  Created by Park GilNam on 23/01/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

#import "Book.h"

@implementation Book

@synthesize name, genre, author;

-(void)bookPrint {
    NSLog(@"Name : %@", name);
    NSLog(@"Genre : %@", genre);
    NSLog(@"Author : %@", author);
}

@end
