//
//  ViewController.h
//  SelectCar
//
//  Created by Park GilNam on 30/01/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate> {
    NSArray *companyName;
    NSArray *carModal;
    NSArray *carModalImageNames;
    
    NSArray *tesla;
    NSArray *teslaImageNames;
    
    NSArray *lamborghini;
    NSArray *lamborghiniImageNames;
    
    NSArray *porsche;
    NSArray *porscheImageNames;
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

