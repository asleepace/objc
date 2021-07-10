//
//  CamelCase.m
//  Examples
//
//  Created by Colin on 7/10/21.
//
//  Original problem: https://www.hackerrank.com/challenges/camelcase/problem
//

#import "CamelCase.h"

@implementation CamelCase

- (NSNumber *)camelcase:(NSString *)s {
  NSUInteger words = 1;
  for (NSUInteger i=0; i<s.length; i++) {
    const char c = [s characterAtIndex:i];
    if (isupper(c)) words++;
  }
  return @(words);
}

@end
