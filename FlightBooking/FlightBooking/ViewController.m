//
//  ViewController.m
//  FlightBooking
//
//  Created by Park GilNam on 30/01/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize departureDateButton;
@synthesize returnDateLabel;
@synthesize returnDateButton;
@synthesize datePicker;
@synthesize roundTripSwitch;
@synthesize departureTextField;
@synthesize arrivalTextField;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    departureTextField.delegate = self;
    arrivalTextField.delegate = self;
    
    buttonTag = 0;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
    datePicker.hidden = YES;
}

- (IBAction)showReturnDateAction:(id)sender {
    returnDateLabel.hidden = ![sender isOn];
    returnDateButton.hidden = ![sender isOn];
}

- (IBAction)showDatePickerAction:(id)sender {
    buttonTag = [sender tag];
    datePicker.hidden = NO;
}

- (IBAction)selectDateAction:(id)sender {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"YY.MM.dd hh:mma";
    
    NSString *date = [formatter stringFromDate: [sender date]];
    
    if (buttonTag == 1) {
        [departureDateButton setTitle:date forState:UIControlStateNormal];
    } else if (buttonTag == 2) {
        [returnDateButton setTitle:date forState:UIControlStateNormal];
    }
}

@end
