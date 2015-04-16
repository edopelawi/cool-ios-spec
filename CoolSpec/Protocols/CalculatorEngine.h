//
//  CalculatorEngine.h
//  CoolSpec
//
//  Created by Ricardo Pramana Suranta on 4/16/15.
//  Copyright (c) 2015 Ice House. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CalculatorEngine <NSObject>

/**
 *  Calculate passed number.
 *
 *  @param number @p NSNumber instance. Should not be nil.
 *
 *  @return calculated @p NSNumber instance.
 */
- (NSNumber *)calculate:(NSNumber *)number;

@end
