//
//  ViewController.h
//  MiniBrowser
//
//  Created by Park GilNam on 30/01/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate, WKNavigationDelegate>

@property (weak, nonatomic) IBOutlet UISegmentedControl *bookmarkSegmentedControl;
@property (weak, nonatomic) IBOutlet UITextField *urlTextField;
@property (weak, nonatomic) IBOutlet WKWebView *mainWebView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorView;

- (IBAction)bookmarkAction:(id)sender;
- (void) startLoding;

- (IBAction)backAction:(id)sender;
- (IBAction)forwordAction:(id)sender;
- (IBAction)stopAction:(id)sender;
- (IBAction)refreshAction:(id)sender;

@end

