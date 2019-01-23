//
//  Vehicle.h
//  First
//
//  Created by Park GilNam on 23/01/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Vehicle : NSObject {
    // member variable
    //    int wheels;
    //    int seats;
}

// member method
@property int wheels;
@property int seats;
//-(void)setWheels : (int)w;
//-(void)setSeats : (int)s;
//-(int)wheels;
//-(int)seats;
-(void)print;

-(void)setWheels: (int)w Seats:(int)s;

-(void)drawCircleX: (int)x Y:(int)y R:(int)r;
-(void)drawCircleXYR: (int)x : (int)y : (int)r;

@end

NS_ASSUME_NONNULL_END
