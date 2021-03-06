//
//  AppleStuffExceptionHandler.m
//  I2PLauncher
//
//  Created by Mikal Villa on 17/09/2018.
//  Copyright © 2018 The I2P Project. All rights reserved.
//

#import "AppleStuffExceptionHandler.h"

NSException* __nullable AppleStuffExecuteWithPossibleExceptionInBlock(dispatch_block_t _Nonnull block) {
  
  @try {
    if (block != nil) {
      block();
    }
  }
  @catch (NSException *exception) {
    return exception;
  }
  return nil;
}
