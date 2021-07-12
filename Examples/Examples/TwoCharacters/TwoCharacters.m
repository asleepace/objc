//
//  TwoCharacters.m
//  Examples
//
//  Created by Colin on 7/11/21.
//

#import "TwoCharacters.h"

@implementation TwoCharacters



- (NSNumber *)alternate:(NSString *)s {
  
  NSMutableDictionary<NSString *, NSNumber *> *letters = [NSMutableDictionary new];
  for (NSUInteger i=0; i<s.length; i++) {
    NSString *key = [NSString stringWithFormat:@"%c", [s characterAtIndex:i]];
    NSNumber *val = [letters objectForKey:key] ? [letters objectForKey:key] : @(0);
    [letters setValue:@(val.integerValue + 1) forKey:key];
  }
  
  NSLog(@"letters: %@", [letters description]);
  
}

@end
