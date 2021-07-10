NSString * timeConversion(NSString *s)
{
  NSDateFormatter *format = [NSDateFormatter new];
  [format setDateFormat:@"hh:mm:ssa"];
  NSDate *date = [format dateFromString:s];
  NSLog(@"date: %@",[date description]);
  [format setDateFormat:@"HH:mm:ss"];
  return [format stringFromDate:date];
}
