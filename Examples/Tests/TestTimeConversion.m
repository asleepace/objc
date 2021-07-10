//
//  TestTimeConversion.m
//  Examples
//
//  Created by padlet on 7/10/21.
//

#import <XCTest/XCTest.h>
#import "TimeConversion.h"

@interface TestTimeConversion : XCTestCase
{
  TimeConversion *time;
}

@end

@implementation TestTimeConversion

- (void)setUp {
  time = [TimeConversion new];
}

- (void)tearDown {
  time = nil;
}

- (void)testTime1 {
  NSString *input = @"05:25:30AM";
  NSString *output = [time timeConversion:input];
  NSString *expect = @"05:25:30";
  XCTAssert([output isEqualToString:expect]);
}

- (void)testTime2 {
  NSString *input = @"05:25:30PM";
  NSString *output = [time timeConversion:input];
  NSString *expect = @"17:25:30";
  XCTAssert([output isEqualToString:expect]);
}

- (void)testTime3 {
  NSString *input = @"12:00:00AM";
  NSString *output = [time timeConversion:input];
  NSString *expect = @"00:00:00";
  XCTAssert([output isEqualToString:expect]);
}

@end
