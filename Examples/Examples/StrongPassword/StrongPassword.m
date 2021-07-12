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
    if (hasSpecialChar == false) {
      if (c == '!' || c == '@' || c == '#' || c == '$' || c == '%' || c == '^' ||
          c == '&' || c == '*' || c == '(' || c ==')' || c == '-' || c =='+') {
        hasSpecialChar = true;
      }
    }
    if (hasLowercase == false) hasLowercase = islower(c);
    if (hasUppercase == false) hasUppercase = isupper(c);
    if (hasDigit == false) hasDigit = isdigit(c);
  }
  
  NSLog(@"[StrongPassword] digit: %i lowercase: %i uppercase: %i special: %i", hasDigit, hasLowercase, hasUppercase, hasSpecialChar);
  
  NSInteger needed = 0, missing = 6 - n.intValue;
  if (!hasSpecialChar) needed++;
  if (!hasUppercase) needed++;
  if (!hasLowercase) needed++;
  if (!hasDigit) needed++;
  
  return @(MAX(missing, needed));
}

@end
