# Objective-C 

A portfolio of various Objective-C code snippets, problems and references.

## Quick References

```Objective-C
// max values
NSInteger maxValue = NSIntegerMax;
NSInteger negValue = -NSIntegerMax;

// convert NSNumber to NSInteger
NSInteger integer = [@(10) integerValue];

// regex for special characters via negations
NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[^A-Za-z0-9]" options:0 error:0];
```

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
- [Objective-C REGEX](https://stackoverflow.com/questions/37499037/regular-expressions-in-iosa-word-a-letter-and-special-characters)

## Reverse Array (Simple)

```Objective-C
- (NSArray *) reverseArray:(NSArray *)a {
    NSMutableArray *c = [NSMutableArray arrayWithArray: a];
    int j = (int)([c count] - 1);
    int halfWay = (int)(j / 2);
    for (int i=0; i<=halfWay; i++) {
        id temp = c[i];
        c[i] = c[j-i];
        c[j-i] = temp;
    }
    return c.copy;
}
```

## HourGlass Summation

```Objective-C
 - (NSInteger) sum:(NSArray **)arr row:(int)r col:(int)c {
     NSInteger sum = [(*arr)[r][c] integerValue];
     sum += [(*arr)[r][c+1] integerValue];
     sum += [(*arr)[r][c+2] integerValue];
     sum += [(*arr)[r+1][c+1] integerValue];
     sum += [(*arr)[r+2][c] integerValue];
     sum += [(*arr)[r+2][c+1] integerValue];
     sum += [(*arr)[r+2][c+2] integerValue];
     return sum;
 }
 
- (NSNumber *) hourglassSum:(NSArray *)arr {
    int height = 2, width = 2;
    NSInteger max = -NSIntegerMax;
    for (int i=0; i<4; i++) {
        for (int j=0; j<4; j++) {
            NSInteger sum = [self sum:&arr row:i col:j];
            max = sum > max ? sum : max;
        }
    }
    return @(max);
}
```
