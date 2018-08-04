//
//  PaypalPaymentService.h
//  Payments
//
//  Created by Jamie on 2018-08-03.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface PaypalPaymentService : NSObject <PaymentGateway>;

- (BOOL) canProcessPayment;

@end
