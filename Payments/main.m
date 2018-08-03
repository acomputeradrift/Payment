//
//  main.m
//  Payments
//
//  Created by Jamie on 2018-08-03.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        
        InputHandler *inputHandler = [[InputHandler alloc] init];
        NSString *userAnswerString = [inputHandler userInputForPrompt:@"Thank you for shopping at Acme.com Your total today is $xxx Please select your payment method:\n1: Paypal, 2: Stripe, 3: Amazon"];
        int userAnswer = [userAnswerString intValue];
        PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
        //NSLog(@"%i", userAnswer);
    }
    return 0;
}
