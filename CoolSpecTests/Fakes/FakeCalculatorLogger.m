//
//  FakeCalculatorLogger.m
//  CoolSpec
//
//  Created by Ricardo Pramana Suranta on 4/16/15.
//  Copyright (c) 2015 Ice House. All rights reserved.
//

#import "FakeCalculatorLogger.h"

@implementation FakeCalculatorLogger

- (void)logNumber:(NSNumber *)number
{
    NSLog(@"[!!!] Result : %@",number);
}

@end
