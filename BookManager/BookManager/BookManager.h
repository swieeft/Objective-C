//
//  BookManager.h
//  BookManager
//
//  Created by Park GilNam on 23/01/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Book;
@interface BookManager : NSObject {
    NSMutableArray *bookList;
}

-(void) addBook: (Book *) bookObject;
-(NSString *) showAllBook;
-(NSUInteger) countBook;
-(NSString *) findBook: (NSString *) name;
-(NSString *) removeBook: (NSString *) name;

@end

NS_ASSUME_NONNULL_END
