//
//  ViewController.m
//  OCTest
//
//  Created by 周洋 on 2018/12/4.
//  Copyright © 2018年 周洋. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"


@interface ViewController ()

@end

#ifdef DEBUG
# define DLog(fmt, ...) NSLog((@"[文件名:%s]\n" "[函数名:%s]\n" "[行号:%d] \n" fmt), __FILE__, __FUNCTION__, __LINE__, __VA_ARGS__);
#else
# define DLog(...);
#endif

#define my_print2(fmt,...)  NSLog(fmt,__VA_ARGS__)

#define K_Man(a,b) \
a>=b?a:b

#define K_Char(n) #n
#define K_ToChar(n) @#n
#define K_Log(parameter1, ...) NSLog(parameter1, ##__VA_ARGS__)
#define K_Log1(...) NSLog(__VA_ARGS__)
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    K_Log(@"111",@"2222");
//    K_Log1(@"2=======",@"999999");
    
//    K_Log(@"%@%@",@"111",@"222");
//    NSString *toString = K_ToChar(19911119);
//    NSString *str = @K_Char(888);
//    NSLog(@"%s",K_Char(888));
//    NSLog(@"%d",K_Man(2, 3));
    Person *p1 = [[Person alloc]init];
    Person *p2 = [Person new];
    Person *p0 = [Person sharedPerson];
    Person *p = [Person sharedPerson];
    Person *pc = [p1 copy];
    K_Log(@"\n%@==\n%@==\n%@==\n%@==\n%@",p1,p2,p0,p,pc);
    
}


@end
