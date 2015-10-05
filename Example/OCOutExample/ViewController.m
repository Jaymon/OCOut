//  Created by Jay Marcyes on 10/1/15.

#import "ViewController.h"
#import "OCOut.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *str = @"foo bar";
    OCOUT(str);
    
    UIEdgeInsets ei = UIEdgeInsetsMake(10, 10, 10, 10);
    OCOUT(ei);
    
    NSRange range = NSMakeRange(0, 10);
    OCOUT(range);
    
    
    OCBREAK(5);
    
    OCHERE();
    
    OCTRACE();
    
    ///NSLog(@"%@", [NSThread callStackSymbols]);
    
    
//    for (NSString *o in [NSThread callStackSymbols]) {
//        ///NSLog(@"%@", o);
//        NSString *pattern = @"\\[[^\\]]+\\]";
//        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:pattern options:0 error:nil];
//        NSArray *matches = [regex matchesInString:o options:0 range:NSMakeRange(0, o.length)];
//        for (NSTextCheckingResult *match in matches) {
//            
//            NSLog(@"%@", [o substringWithRange:match.range]);
//        }
//    }
    
//    for (NSString *o in [NSThread callStackSymbols]) {
//        ///NSLog(@"%@", o);
//        LOG_EXPR(o);
//    }
    
    
    ///NSString *_FN_ = [NSString stringWithUTF8String:__FILE__];
    ///NSString *_STR_ = [NSString stringWithFormat:@"%s = %@ (%@:%d)", STRINGIFICATION(str), str, _FN_, __LINE__];
    ///fprintf(stderr, "%s", [_STR_ UTF8String]);
    
    ///NSString *fn = [NSString stringWithUTF8String:__FILE__];
    ///NSString* theFileName = [[[NSString stringWithUTF8String:__FILE__] lastPathComponent] stringByDeletingPathExtension];
    ///OCOUT(theFileName);
    
//    NSString *_X_ = @"foo bar";
//    __typeof__(_X_) _Y_ = (_X_);
//    const char *_TYPE_CODE_ = @encode(__typeof__(_X_));
//    NSString *_VAL_ = VTPG_DDToStringFromTypeAndValue(_TYPE_CODE_, &_Y_);
//    if(_VAL_) {
//        NSLog(@"_X_ %s", STRINGIFICATION(_X_));
//        NSLog(@"_VAL_ %@", _VAL_);
//        NSString *_STR_ = [NSString stringWithFormat:@"%@ = %@", _X_, _VAL_];
//        [[NSFileHandle fileHandleWithStandardError] writeData:[_STR_ dataUsingEncoding: NSUTF8StringEncoding]];
//    }
    
    ///NSLog(@"==== = = = == = = == === ");
    
    
    
    ///LOG_EXPR(str);
    
    ///[NSString stringWithFormat:@"", ];
    ///[[NSFileHandle fileHandleWithStandardError] writeData: [str dataUsingEncoding: NSUTF8StringEncoding]];
    
    
}

@end
