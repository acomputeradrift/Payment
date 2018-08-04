//
//  PaymentGateway.m
//  Payments
//
//  Created by Jamie on 2018-08-03.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void)processPaymentAmount:(NSInteger)integer{
    if ([self.delegate canProcessPayment]){
        [self.delegate processPaymentAmount:integer];
    }else{
        NSLog(@"Sorry server down, use Bitcoin");
    }
}

@end
