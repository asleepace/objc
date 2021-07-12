//
//  TestTwoCharacters.m
//  Tests
//
//  Created by padlet on 7/11/21.
//

#import <XCTest/XCTest.h>
#import "TwoCharacters.h"

@interface TestTwoCharacters : XCTestCase
{
  TwoCharacters *two;
}

@end

@implementation TestTwoCharacters

- (void)setUp {
  two = [TwoCharacters new];
}

- (void)tearDown {
  two = nil;
}

- (void)test1 {
  [two alternate:@"beabeefeab"];
}


@end
