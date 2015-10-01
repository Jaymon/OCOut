#import "VTPG_Common.h"


//#define BOCOUT2(_X_) LOG_EXPR(_X_)

// http://gcc.gnu.org/onlinedocs/cpp/Stringification.html
#define STRINGIFICATION(_S_) #_S_

///#define FILENAME(_F_) [[NSString stringWithUTF8String:__FILE__] lastPathComponent];

#define OCOUT(_X_) do{\
    __typeof__(_X_) _Y_ = (_X_);\
    const char *_TYPE_CODE_ = @encode(__typeof__(_X_));\
    NSString *_VAL_ = VTPG_DDToStringFromTypeAndValue(_TYPE_CODE_, &_Y_);\
    if(_VAL_) {\
        NSString *_FN_ = [[[NSString stringWithUTF8String:__FILE__] lastPathComponent] stringByDeletingPathExtension];\
        NSString *_STR_ = [NSString stringWithFormat:@"%s = %@ (%@:%d)", STRINGIFICATION(_X_), _VAL_, _FN_, __LINE__];\
        fprintf(stderr, "%s\n", [_STR_ UTF8String]);\
    } else {\
        NSLog(@"Unknown _TYPE_CODE_: %s for expression %s in function %s, file %s, line %d", _TYPE_CODE_, #_X_, __func__,  __FILE__, __LINE__);\
    }\
}while(0)


// http://stackoverflow.com/a/1354736
///[[NSFileHandle fileHandleWithStandardError] writeData:[_STR_ dataUsingEncoding: NSUTF8StringEncoding]];\
