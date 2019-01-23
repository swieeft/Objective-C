//
//  main.m
//  NSArrayTest
//
//  Created by Park GilNam on 23/01/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // NSArray
        NSArray *month = [[NSArray alloc]initWithObjects:@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", @"12", nil];
        
//        for (int i = 0; i < [month count]; i++) {
//            NSLog(@"month : %@", [month objectAtIndex:i]);
//        }

        for (NSString *strTemp in month) {
            NSLog(@"month : %@", strTemp);
        }
        
        // NSMutableArray
        NSMutableArray *mmonth = [NSMutableArray arrayWithArray:month];
        
        [mmonth addObject:@"13"];
        [mmonth addObject:@"14"];
        [mmonth addObject:@"15"];
        
        for (NSString *strTemp in mmonth) {
            NSLog(@"mmonth : %@", strTemp);
        }
        
    }
    return 0;
}
