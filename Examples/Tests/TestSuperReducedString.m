//
//  TestSuperReducedString.m
//  Examples
//
//  Created by padlet on 7/10/21.
//

#import <XCTest/XCTest.h>
#import "SuperReducedStrings.h"

@interface TestSuperReducedString : XCTestCase {
  SuperReducedStrings *reducer;
}

@end

@implementation TestSuperReducedString

- (void)setUp {
  reducer = [SuperReducedStrings new];
}

- (void)tearDown {
  reducer = nil;
}

- (void)testCase1 {
  NSString *input = @"aa";
  NSString *output = [reducer superReducedString:input];
  XCTAssert([output isEqualToString:@""]);
}

- (void)testCase2 {
  NSString *input = @"baab";
  NSString *output = [reducer superReducedString:input];
  XCTAssert([output isEqualToString:@""]);
}

- (void)testCase3 {
  NSString *input = @"aaabccddd";
  NSString *output = [reducer superReducedString:input];
  XCTAssert([output  isEqualToString:@"abd"]);
}

@end
