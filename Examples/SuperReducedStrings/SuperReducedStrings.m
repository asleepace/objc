//
//  SuperReducedStrings.m
//  Examples
//
//  Created by Colin on 7/10/21.
//
//  Original problem: https://www.hackerrank.com/challenges/reduced-string/problem
//

#import "SuperReducedStrings.h"

@implementation SuperReducedStrings

- (NSString *)superReducedString:(NSString *)string {
  
  // handle base case and return empty string
  if (string == nil) return @"";
  
  // iterate string for pairs and reduce pair and then reduce recursively
  for (NSUInteger i=1, j=0, n=2; i<string.length; i++, j++, n++) {
    const char c1 = [string characterAtIndex:j];
    const char c2 = [string characterAtIndex:i];
    if (c1 == c2 && n <= string.length) {
      NSString *prev = [string substringToIndex:j];
      NSString *next = [string substringFromIndex:n];
      string = [prev stringByAppendingString:next];
      string = [self superReducedString:string];
      break;
    }
  }
  
  // return reduced string
  return string;
}

@end
