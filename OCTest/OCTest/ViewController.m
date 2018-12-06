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
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person *p1 = [[Person alloc]init];
    Person *p2 = [Person new];
    Person *p0 = [Person sharedPerson];
    Person *p = [Person sharedPerson];
    Person *pc = [p1 copy];
    NSLog(@"\n%@==\n%@==\n%@==\n%@==\n%@",p1,p2,p0,p,pc);
    
}


@end
