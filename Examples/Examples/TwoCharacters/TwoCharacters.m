//
//  TwoCharacters.m
//  Examples
//
//  Created by Colin on 7/11/21.
//

#import "TwoCharacters.h"

@implementation TwoCharacters

- (NSString *)removeAdjacentDuplicates:(NSString *)s {
  
  NSUInteger start = 0;
  NSUInteger length = 1;
  while (length < s.length)
  {
    if ([s ch])
  }
  
}

- (NSNumber *)alternate:(NSString *)s {
  
  s = [self removeAdjacentDuplicates:s];
  NSLog(@"removed duplicates: %@", s);
  
  return @([s length]);
}

@end
