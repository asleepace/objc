//
//  TestStrongPassword.m
//  Tests
//
//  Created by padlet on 7/10/21.
//

#import <XCTest/XCTest.h>
#import "StrongPassword.h"

@interface TestStrongPassword : XCTestCase
{
  StrongPassword *password;
}

@end

@implementation TestStrongPassword

- (void)setUp {
  password = [StrongPassword new];
}

- (void)tearDown {
  password = nil;
}

- (void)testStrongPassword1 {
  NSString *input = @"Ab1";
  NSNumber *output = [password minimumNumber:@(input.length) password:input];
  NSLog(@"[TestStrongPassword] input: %@ output: %i", input, output.intValue);
  XCTAssertTrue(output.intValue == 3);
}

- (void)testStrongPasssword2 {
  NSString *input = @"#HackerRank";
  NSNumber *output = [password minimumNumber:@(input.length) password:input];
  NSLog(@"[TestStrongPassword] input: %@ output: %i", input, output.intValue);
  XCTAssertTrue(output.intValue == 1);
}


@end
