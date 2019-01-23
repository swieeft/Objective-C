//
//  main.m
//  BookManager
//
//  Created by Park GilNam on 23/01/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "BookManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Book *book1 = [[Book alloc]init];
        book1.name = @"햄릿";
        book1.genre = @"비극";
        book1.author = @"셰익스피어";
//        [book1 bookPrint];
        
        Book *book2 = [[Book alloc]init];
        book2.name = @"해리포터";
        book2.genre = @"판타지";
        book2.author = @"조앤롤링";
//        [book2 bookPrint];
        
        Book *book3 = [[Book alloc]init];
        book3.name = @"그래";
        book3.genre = @"미정";
        book3.author = @"미상";
//        [book3 bookPrint];
        
        BookManager *myBook = [[BookManager alloc]init];
        
        [myBook addBook:book1];
        [myBook addBook:book2];
        [myBook addBook:book3];
        
        NSLog(@"%@", [myBook showAllBook]);
        NSLog(@"count : %li", [myBook countBook]);
        
        NSString *strTemp = [myBook findBook: @"햄릿"];
        
        if (strTemp == nil) {
            NSLog(@"data nil");
        } else {
            NSLog(@"%@", strTemp);
        }
        
        NSString *removeResult = [myBook removeBook: @"해리포터"];
        
        if (removeResult == nil) {
            NSLog(@"remove fail");
        } else {
            NSLog(@"%@ remove", removeResult);
        }
        
        NSLog(@"%@", [myBook showAllBook]);
        NSLog(@"count : %li", [myBook countBook]);
    }
    return 0;
}
