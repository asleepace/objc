//
//  StrongPassword.m
//  Examples
//
//  Created by Colin on 7/10/21.
//
//  Original problem: https://www.hackerrank.com/challenges/strong-password/
//

#import "StrongPassword.h"

@implementation StrongPassword

- (NSNumber *) minimumNumber:(NSNumber *)n password:(NSString *)password {
  
  BOOL hasDigit = false, hasLowercase = false, hasUppercase = false, hasSpecialChar = false;
  
  for (NSUInteger i=0; i<password.length; i++) {
    const char c = [password characterAtIndex:i];
    if (hasSpecialChar == false) hasSpecialChar = isspecial(c);
    if (hasLowercase == false) hasLowercase = islower(c);
    if (hasUppercase == false) hasUppercase = isupper(c);
    if (hasDigit == false) hasDigit = isdigit(c);
  }
  
  NSUInteger needed = 0;
  if (!hasSpecialChar) needed++;
  if (!hasUppercase) needed++;
  if (!hasLowercase) needed++;
  if (!hasDigit) needed++;
  
  needed += 6 - n.integerValue + needed;
  
  return @(needed);
}

@end
