//
//  Person.m
//  OCTest
//
//  Created by 周洋 on 2018/12/4.
//  Copyright © 2018年 周洋. All rights reserved.
//

#import "Person.h"
@interface Person()<NSCopying,NSMutableCopying>
@end
@implementation Person
ZYShareSingleton_M(Person);

//static Person *_p = nil;
//第一次调用该类时调用
//+(void)initialize
//{
//    [self sharedInstance];
//}
////初始化对象
//+(instancetype)sharedInstance
//{
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        _p = [[self alloc]init];
//    });
//    return _p;
//}
////重写alloc 判断对象是否已经初始化。
//+(instancetype)alloc
//{
//    if (_p) {
//        return _p;
//    }
//    return [super alloc];
//}



//重写allocWithZone初始化单例
//+(instancetype)sharedInstance
//{
//    return [[self alloc]init];
//}
//-(instancetype)init
//{
//    NSLog(@"======notinit");
//    if(self = [super init]){
//        NSLog(@"======init");
//    }
//    return self;
//}
//重写allocWithZone 保证创建对象分配的内存是同一个
//+(instancetype)allocWithZone:(struct _NSZone *)zone
//{
//    NSLog(@"======zone");
//    static Person *p = nil;
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        p = [super allocWithZone:zone];
//    });
//    return p;
//}
//-(instancetype)copyWithZone:(NSZone *)zone
//{
//    return [Person sharedInstance];
//}
//-(instancetype)mutableCopyWithZone:(NSZone *)zone
//{
//    return [Person sharedInstance];
//}

@end
