//
//  Header.h
//  OCTest
//
//  Created by 周洋 on 2018/12/5.
//  Copyright © 2018年 周洋. All rights reserved.
//

#ifndef Header_h
#define Header_h

// .h文件
#define ZYShareSingleton_H(name) \
+(instancetype)shared##name
// .m文件
#define ZYShareSingleton_M(name) \
+(instancetype)shared##name \
{ \
    return [[self alloc]init]; \
} \
+(instancetype)allocWithZone:(struct _NSZone *)zone \
{ \
    static name *instance = nil; \
    static dispatch_once_t onceToken; \
    dispatch_once(&onceToken, ^{ \
        instance = [super allocWithZone:zone]; \
    }); \
    return instance; \
} \
-(instancetype)copyWithZone:(NSZone *)zone \
{ \
    return [name shared##name]; \
} \
-(instancetype)mutableCopyWithZone:(NSZone *)zone \
{ \
    return [name shared##name]; \
}


#endif /* Header_h */
