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
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        InputHandler *inputHandler = [[InputHandler alloc] init];
        int randomNumber = arc4random_uniform(1000);
        NSString *fullString = [NSString stringWithFormat:@"Thank you for shopping at Acme.com Your total today is $%i Please select your payment method:\n1: Paypal, 2: Stripe, 3: Amazon", randomNumber];
        NSString *userAnswerString = [inputHandler userInputForPrompt:fullString];
        int userAnswer = [userAnswerString intValue];
        PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];

        switch (userAnswer) {
            case 1:{
                PaypalPaymentService *paypal = [[PaypalPaymentService alloc] init];
                paymentGateway.delegate = paypal;
                [paymentGateway processPaymentAmount:randomNumber];
                break;
            }
            case 2:{
                StripePaymentService *stripe = [[StripePaymentService alloc] init];
                paymentGateway.delegate = stripe;
                [paymentGateway processPaymentAmount:randomNumber];
                break;
            }
            case 3:{
                AmazonPaymentService *amazon = [[AmazonPaymentService alloc] init];
                paymentGateway.delegate = amazon;
                [paymentGateway processPaymentAmount:randomNumber];
                break;
            }
            default:{
                break;
            }
                //NSLog(@"%i", userAnswer);
        }
    }
    return 0;
}
