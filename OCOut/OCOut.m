//  Created by Jay Marcyes on 10/5/15.

#import "OCOut.h"


NSArray *OC_trace()
{
    NSMutableArray *calls = [NSMutableArray new];
    int _I_ = 1;
    for (NSString *_O_ in [NSThread callStackSymbols]) {
        // http://www.raywenderlich.com/30288/nsregularexpression-tutorial-and-cheat-sheet
        NSString *_PATTERN_ = @"\\[[^\\]]+\\]";
        NSRegularExpression *_REGEX_ = [NSRegularExpression regularExpressionWithPattern:_PATTERN_ options:0 error:nil];
        NSArray *_MS_ = [_REGEX_ matchesInString:_O_ options:0 range:NSMakeRange(0, _O_.length)];
        for (NSTextCheckingResult *_M_ in _MS_) {
            [calls addObject:[NSString stringWithFormat:@"%d.\t%@", _I_, [_O_ substringWithRange:_M_.range]]];
            _I_++;
        }
    }
    
    return calls;
}
