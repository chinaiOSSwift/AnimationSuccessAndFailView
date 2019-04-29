//
//  ViewController.m
//  动画打对勾和叉号
//
//  Created by KOCHIAEE6 on 2019/4/29.
//  Copyright © 2019 KOCHIAEE6. All rights reserved.
//

#import "ViewController.h"
#import "AnimationView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AnimationView *animationView = [[AnimationView alloc]initWithFrame:CGRectMake(100, 100, 50, 50) withState:true];
    animationView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:animationView];
}



@end
