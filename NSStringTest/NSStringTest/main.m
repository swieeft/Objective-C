//
//  main.m
//  NSStringTest
//
//  Created by Park GilNam on 23/01/2019.
//  Copyright © 2019 swieeft. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // NSString
        
//        NSString *str = [[NSString alloc]initWithString:@"This is NSString"];
//        str = @"This is NSString";
        NSString *str = @"This is NSString";
        
        NSLog(@"str : %@", str);
        
        NSString *result;
        
        // index 이후 문자만
        result = [str substringFromIndex:6];
        NSLog(@"result : %@", result);
        
        // index 까지의 문자만
        result = [str substringToIndex:3];
        NSLog(@"result : %@", result);
        
        // 특정 범위만
        result = [[str substringToIndex:11]substringFromIndex:8];
        NSLog(@"result : %@", result);
        
        result = [[str substringFromIndex:8]substringToIndex:3];
        NSLog(@"result : %@", result);
        
        result = [[str substringWithRange:NSMakeRange(8, 3)]lowercaseString];
        NSLog(@"result : %@", result);
        
        // NSMutableString
        NSMutableString *mstr = [NSMutableString stringWithString:str];
        
        [mstr appendString:@" and NSMutableString"];
        NSLog(@"mstr : %@", mstr);
        
        [mstr insertString:@"Mutable " atIndex:8];
        NSLog(@"mstr : %@", mstr);
    }
    return 0;
}
