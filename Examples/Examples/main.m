//
//  main.m
//  Examples
//
//  Created by padlet on 7/10/21.
//

#import <Foundation/Foundation.h>
#import "Snippets.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    SuperReducedString *reducer = [SuperReducedString new];
    
    NSString *input = @"aabaabd";
    NSString *output = [reducer superReducedString:input];
      
    NSLog(@"input: %@ output: %@", input, output);
  }
  return 0;
}
