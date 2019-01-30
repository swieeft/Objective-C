//
//  ViewController.m
//  MiniBrowser
//
//  Created by Park GilNam on 30/01/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize bookmarkSegmentedControl;
@synthesize urlTextField;
@synthesize mainWebView;
@synthesize activityIndicatorView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    mainWebView.navigationDelegate = self;
    urlTextField.delegate = self;
    
    [self startLoding];
    
    NSString *urlString = @"http://www.facebook.com";
    [mainWebView loadRequest: [NSURLRequest requestWithURL: [NSURL URLWithString:urlString]]];
    
    urlTextField.text = urlString;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [self startLoding];
    
    NSString *urlString = textField.text;
    
    if (![urlString hasPrefix:@"http://"]) {
        urlString = [[NSString alloc] initWithFormat:@"http://%@", urlString];
    }
    
    [mainWebView loadRequest: [NSURLRequest requestWithURL: [NSURL URLWithString:urlString]]];
    urlTextField.text = urlString;
    
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)bookmarkAction:(id)sender {
    
    [self startLoding];
    
    NSString *bookmarkURL = [bookmarkSegmentedControl titleForSegmentAtIndex: bookmarkSegmentedControl.selectedSegmentIndex];
    
    NSString *urlString = [[NSString alloc] initWithFormat:@"http://www.%@.com", bookmarkURL];
    
    [mainWebView loadRequest: [NSURLRequest requestWithURL: [NSURL URLWithString:urlString]]];
    urlTextField.text = urlString;
}

- (void) startLoding {
    [activityIndicatorView startAnimating];
}

- (IBAction)backAction:(id)sender {
    [mainWebView goBack];
    urlTextField.text = mainWebView.URL.absoluteString;
}

- (IBAction)forwordAction:(id)sender {
    [mainWebView goForward];
    urlTextField.text = mainWebView.URL.absoluteString;
}

- (IBAction)stopAction:(id)sender {
    [mainWebView stopLoading];
}

- (IBAction)refreshAction:(id)sender {
    [mainWebView reload];
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    [activityIndicatorView stopAnimating];
}

@end
