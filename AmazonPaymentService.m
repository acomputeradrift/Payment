//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Jamie on 2018-08-03.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService 


- (void)processPaymentAmount:(NSInteger)integer {
    NSLog(@"Let's make Jeff Bezos richer!");
}

- (BOOL)canProcessPayment{
    int number = arc4random_uniform(2);
    if (number == 0){
        return NO;
    }
    else{
        return YES;
    }
}

@end
