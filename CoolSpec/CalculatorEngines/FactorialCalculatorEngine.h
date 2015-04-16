//
//  FactorialCalculatorEngine.h
//  CoolSpec
//
//  Created by Ricardo Pramana Suranta on 4/16/15.
//  Copyright (c) 2015 Ice House. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CalculatorEngine.h"

@interface FactorialCalculatorEngine : NSObject <CalculatorEngine>

/**
 *  Calculate factorial value of given number.
 *
 *  @param number @p NSNumber instance.
 *
 *  @return @p NSNumber instance of parameter's factorial value.
 */
- (NSNumber *)calculate:(NSNumber *)number;

@end
