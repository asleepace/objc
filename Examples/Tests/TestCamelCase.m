//
//  TestCamelCase.m
//  Examples
//
//  Created by padlet on 7/10/21.
//

#import <XCTest/XCTest.h>
#import "CamelCase.h"

@interface TestCamelCase : XCTestCase
{
  CamelCase *camel;
}

@end

@implementation TestCamelCase

- (void)setUp {
  camel = [CamelCase new];
}

- (void)tearDown {
  camel = nil;
}

- (void)test1 {
  XCTAssert([[camel camelcase:@"saveChangesInTheEditor"] isEqualToNumber:@5]);
}

- (void)test2 {
  XCTAssert([[camel camelcase:@"twoWords"] isEqualToNumber:@2]);
}

- (void)test3 {
  XCTAssert([[camel camelcase:@"single"] isEqualToNumber:@1]);
}


@end
