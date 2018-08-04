//
//  PaymentGateway.h
//  Payments
//
//  Created by Jamie on 2018-08-03.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
@class PaymentGateway;

//delegator
@protocol PaymentGateway
- (void) processPaymentAmount : (NSInteger)integer;
@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentGateway> delegate;

- (void) processPaymentAmount : (NSInteger)integer;

@end
