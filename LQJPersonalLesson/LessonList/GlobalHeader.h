//
//  GlobalHeader.h
//  LQJPersonalLesson
//
//  Created by Jiker on 2016/7/22.
//  Copyright © 2016年 LiuQiJia. All rights reserved.
//

#ifndef GlobalHeader_h
#define GlobalHeader_h

#ifdef DEBUG
#define LQJlog(fmt,...)do{
NSString  *file = [[NSString alloc] initWithFormat:@"%s",__FILE__ ];\
NSLog((@"< file:%@  ;Line:%d  ;FUNCTION:%s > --:"fmt),[file lastPathComponent],__LINE__,__func__,##_VA_LIST);\
}while(0)


#define NSLog(format, ...) do {                                                                          \
fprintf(stderr, "<%s : %d> %s\n",                                           \
        [[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String],  \
        __LINE__, __func__);                                                        \
(NSLog)((format), ##__VA_ARGS__);                                           \
fprintf(stderr, "-------\n");                                               \
} while (0)
#else
#define LQJlog(...)
#endif


#endif /* GlobalHeader_h */
