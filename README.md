# Objective-C 

A portfolio of various Objective-C code snippets, problems and references.

## KVC Collection Operators

```Objective-C
@interface Product : NSObject
@property NSString *name;
@property double price;
@property NSDate *launchedOn;
@end

NSArray<Products *> products = [NSArray new];

[products valueForKeyPath:@"@count"]; // 4
[products valueForKeyPath:@"@sum.price"]; // 3526.00
[products valueForKeyPath:@"@avg.price"]; // 881.50
[products valueForKeyPath:@"@max.price"]; // 1699.00
[products valueForKeyPath:@"@min.launchedOn"]; // June 11, 2012
```

```Objective-C

NSArray<NSNumber *> *numbers = @[ @1, @2, @3, @4 ];

NSNumber *sum = [numbers valueForKeyPath:@"@sum.self"];
```
## Define enums

```Objective-C
typedef enum ShapeType : NSUInteger {
    kCircle,
    kRectangle,
    kOblateSpheroid
} ShapeType;
```

## Objective-C Blocks

- [http://fuckingblocksyntax.com/](http://fuckingblocksyntax.com/)
- [https://nshipster.com/kvc-collection-operators/](https://nshipster.com/kvc-collection-operators/)
