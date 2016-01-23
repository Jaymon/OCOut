#import "VTPG_Common.h"

@import Foundation;


/**
 *  the internal function that OCTRACE wraps
 */
NSArray *OC_trace();


#ifdef DEBUG

////////////////////////////////////////////////////////////////////////////////
#pragma mark - internal
////////////////////////////////////////////////////////////////////////////////

// http://gcc.gnu.org/onlinedocs/cpp/Stringification.html
#define _STRINGIFICATION(_S_) #_S_

// // http://stackoverflow.com/a/1354736
#define _FILENAME() [[[NSString stringWithUTF8String:__FILE__] lastPathComponent] stringByDeletingPathExtension]

#define _PRINT(_STR_) fprintf(stderr, "\n%s\n\n", [_STR_ UTF8String])


////////////////////////////////////////////////////////////////////////////////
#pragma mark - external
////////////////////////////////////////////////////////////////////////////////

/**
 *  given any variable, print it out
 */
#define OCOUT(_X_) do{\
__typeof__(_X_) _Y_ = (_X_);\
    const char *_TYPE_CODE_ = @encode(__typeof__(_X_));\
    NSString *_VAL_ = VTPG_DDToStringFromTypeAndValue(_TYPE_CODE_, &_Y_);\
    if(_VAL_) {\
        NSString *_STR_ = [NSString stringWithFormat:@"%s = %@ (%@:%d)", _STRINGIFICATION(_X_), _VAL_, _FILENAME(), __LINE__];\
        _PRINT(_STR_);\
    } else {\
        NSLog(@"Unknown _TYPE_CODE_: %s for expression %s in function %s, file %s, line %d", _TYPE_CODE_, #_X_, __func__,  __FILE__, __LINE__);\
    }\
}while(0)


// http://stackoverflow.com/questions/260945/create-nsstring-by-repeating-another-string-a-given-number-of-times
/**
 *  print _LINECOUNT_ breaks, basically a line of equal signs
 */
#define OCBREAK(_LINECOUNT_) do{\
    NSString *_STR_ = @"";\
    for(int _I_ = 0; _I_ < _LINECOUNT_; _I_++) {\
        _STR_ = [@"" stringByPaddingToLength:60 withString: @"*" startingAtIndex:0];\
        _PRINT(_STR_);\
    }\
    _STR_ = [NSString stringWithFormat:@"(%@:%d)", _FILENAME(), __LINE__];\
    _PRINT(_STR_);\
}while(0)

/**
 *  print here LINENUMBER
 */
#define OCHERE() do{\
    NSString *_STR_ = [NSString stringWithFormat:@"here %d (%@:%d)", __LINE__, _FILENAME(), __LINE__];\
    fprintf(stderr, "%s\n", [_STR_ UTF8String]);\
}while(0)

/**
 *  print out a simple stack trace
 */
#define OCTRACE() do{\
    for (NSString *_STR_ in OC_trace()) {\
        _PRINT(_STR_);\
    }\
    NSString *_STR_ = [NSString stringWithFormat:@"(%@:%d)", _FILENAME(), __LINE__];\
    _PRINT(_STR_);\
}while(0)


#else

////////////////////////////////////////////////////////////////////////////////
// debug isn't active so just ignore everything
#pragma mark - disabled
////////////////////////////////////////////////////////////////////////////////

#define _STRINGIFICATION(_S_)
#define _FILENAME()
#define _PRINT(_STR_)
#define OCOUT(_X_)
#define OCBREAK(_LINECOUNT_)
#define OCHERE()
#define OCTRACE()


#endif
