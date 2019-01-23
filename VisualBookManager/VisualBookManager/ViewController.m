//
//  ViewController.m
//  VisualBookManager
//
//  Created by Park GilNam on 23/01/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

#import "ViewController.h"
#import "Book.h"
#import "BookManager.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize resultTextView;
@synthesize nameTextField;
@synthesize genreTextField;
@synthesize authorTextField;
@synthesize countLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    
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
    
    myBook = [[BookManager alloc]init];
    
    [myBook addBook:book1];
    [myBook addBook:book2];
    [myBook addBook:book3];
    
    countLabel.text = [NSString stringWithFormat: @"%li", [myBook countBook]];
}

-(IBAction) showAllBookAction: (id) sender {
    resultTextView.text = [myBook showAllBook];
//    [resultTextView setText:[myBook showAllBook]];
}

-(IBAction) addBookAction:(id)sender {
    Book *bookTemp = [[Book alloc]init];
    bookTemp.name = nameTextField.text;
    bookTemp.genre = genreTextField.text;
    bookTemp.author = authorTextField.text;
    
    [myBook addBook: bookTemp];
    
    resultTextView.text = @"책이 추가 되었습니다.";
    
    countLabel.text = [NSString stringWithFormat: @"%li", [myBook countBook]];
}

-(IBAction) findBookAction:(id)sender {
    NSString *strTemp = [myBook findBook: nameTextField.text];
    
    if (strTemp != nil) {
        resultTextView.text = strTemp;
    } else {
        resultTextView.text = @"찾으시는 책이 없습니다.";
    }
}

-(IBAction) removeBookAction:(id)sender {
    NSString *strTemp = [myBook removeBook: nameTextField.text];
    
    if (strTemp != nil) {
        NSMutableString *resultTemp = [[NSMutableString alloc]init];
        [resultTemp appendString:strTemp];
        [resultTemp appendString:@" 책이 지워졌습니다."];
        
        resultTextView.text = resultTemp;
        
        countLabel.text = [NSString stringWithFormat: @"%li", [myBook countBook]];
    } else {
        resultTextView.text = @"지우려는 책이 없습니다.";
    }
}

@end
