//
//  CalculatorLogger.h
//  CoolSpec
//
//  Created by Ricardo Pramana Suranta on 4/16/15.
//  Copyright (c) 2015 Ice House. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CalculatorLogger <NSObject>

/**
 *  Log passed number.
 *
 *  @param number @p NSNumber instance. Should not be nil.
 */
- (void)logNumber:(NSNumber *)number;

@end
