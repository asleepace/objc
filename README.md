# Objective-C 

A portfolio of various Objective-C code snippets, problems and references.

## Quickly Sum Array

```Objective-C

NSArray<NSNumber *> *numbers = @[ @1, @2, @3, @4 ];

NSNumber *sum = [numbers valueForKeyPath:@"@sum.self"];
```
