//
//  main.m
//  maxSumSegments
//
//  Created by Colin Teahan on 7/8/21.
//
//  Original Problem: https://app.codesignal.com/challenge/G46DFL7MxHtqDe9Mb
//

#import "MaxSumSegments.h"

@implementation MaxSumSegments

NSMutableArray<NSNumber *> * maxSumSegments(NSMutableArray<NSNumber *> * input) {
  
  // create results array to hold valueds
  NSMutableArray<NSNumber *> * results = [NSMutableArray arrayWithCapacity:input.count];
  
  // iterate the search size
  for (NSInteger k=1; k<input.count; k++)
  {
    // reset variables after each run
    NSInteger maxValue = -INT_MAX, curIndex = 0;
    
    // interate the entire array
    for (NSInteger i=0; (i+k)<=input.count; i++) {
      
      // create a sub-array within the search window
      NSArray<NSNumber *> *sub = [input subarrayWithRange:NSMakeRange(i, k)];
      
      // sum all of the elements within the given window
      NSInteger curValue = [[sub valueForKeyPath: @"@sum.self"] intValue];
      
      // check if sum is greater than max
      if (curValue > maxValue) {
        maxValue = curValue;
        curIndex = i;
      }
    }
    
    // append greatest index after
    [results addObject:@(curIndex)];
  }
  
  // last result is always index 0
  [results addObject:@(0)];
  
  return results;
}


#pragma mark - Testing


//int main(int argc, const char * argv[]) {
//  @autoreleasepool {
//    NSMutableArray<NSNumber *> *test = [NSMutableArray arrayWithArray:@[@-1, @2, @1, @3, @-2]];
//    NSMutableArray *output = maxSumSegments(test);
//    NSLog(@"%@",[output description]);
//  }
//  return 0;
//}
//
//
//@end

@end
