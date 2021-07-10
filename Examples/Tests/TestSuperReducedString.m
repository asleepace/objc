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

- (void)testSuperReducedString {
  
  XCTAssert([[reducer superReducedString:@"aaabccddd"]  isEqualToString:@"abd"]);
  
}

@end
