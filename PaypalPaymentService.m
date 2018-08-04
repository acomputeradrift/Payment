//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Jamie on 2018-08-03.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void)processPaymentAmount:(NSInteger)integer {
    NSLog(@"Paypal processed $%li", (long)integer);
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
