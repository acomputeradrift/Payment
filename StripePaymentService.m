//
//  StripePaymentService.m
//  Payments
//
//  Created by Jamie on 2018-08-03.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void)processPaymentAmount:(NSInteger)integer { 
    NSLog(@"Isn't Stripe a beer?");
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
