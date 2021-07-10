//
//  TimeConversion.m
//  Examples
//
//  Created by Colin on 7/10/21.
//

#import "TimeConversion.h"

@implementation TimeConversion

- (NSString *)timeConversion:(NSString *)s
{
  NSDateFormatter *format = [NSDateFormatter new];
  [format setDateFormat:@"hh:mm:ssa"];
  NSDate *date = [format dateFromString:s];
  [format setDateFormat:@"HH:mm:ss"];
  return [format stringFromDate:date];
}

@end
