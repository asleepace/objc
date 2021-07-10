//
//  SuperReducedString.m
//  Examples
//
//  Created by padlet on 7/10/21.
//

#import "SuperReducedString.h"

@implementation SuperReducedString

- (NSString *)superReducedString:(NSString *)s {
  
  if (s == nil) return @"";
  
  NSString *reducedString = [self superReducedString:s];
  
  for (NSUInteger i=1; i<reducedString.length; i++) {
    const char c1 = [reducedString characterAtIndex:i];
    const char c2 = [reducedString characterAtIndex:i-1];
    if (c1 == c2) {
      NSString *prevStr = [reducedString substringToIndex:i-1];
      NSString *nextStr = [reducedString substringFromIndex:i];
      return [NSString stringWithFormat:@"%@%@", prevStr, nextStr];
    }
  }
  
  return reducedString;
}

@end
