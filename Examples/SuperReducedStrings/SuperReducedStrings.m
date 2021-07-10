//
//  SuperReducedStrings.m
//  Examples
//
//  Created by padlet on 7/10/21.
//

#import "SuperReducedStrings.h"

@implementation SuperReducedStrings

- (NSString *)superReducedString:(NSString *)string {
  
  NSLog(@"string: %@", string);
  
  if (string == nil) return @"";
  
  BOOL didReduceString = NO;
  
  for (NSUInteger i=1; i<string.length-1; i++) {
    const char c1 = [string characterAtIndex:i];
    const char c2 = [string characterAtIndex:i-1];
    if (c1 == c2) {
      NSString *prevStr = [string substringToIndex:i-1];
      NSString *nextStr = [string substringFromIndex:i+1];
      string = [NSString stringWithFormat:@"%@%@", prevStr, nextStr];
      NSLog(@"reduced: %@", string);
      didReduceString = YES;
    }
  }
  
  if (didReduceString) string = [self superReducedString:string];
  
  return string;
}

@end
