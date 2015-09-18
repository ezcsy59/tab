//
//  FirstViewController.m
//  tab
//
//  Created by 陈思宇 on 15/9/18.
//  Copyright (c) 2015年 陈思宇. All rights reserved.
//

#import "FirstViewController.h"
#import "TestViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
      self.view.backgroundColor=[UIColor blueColor];
    UIButton *but=[[UIButton alloc]initWithFrame:CGRectMake(SCREENW/2-60, 64, 120, 50)];
    but.backgroundColor=[UIColor redColor];
    [but setTitle:@"测试按钮" forState:UIControlStateNormal];
    [self.view addSubview:but];
     [but addTarget:self action:@selector(go) forControlEvents:UIControlEventTouchUpInside];
   //self.title=@"first";
//        self.title  =  @"first" ;//设置navigationbar的title；
//    self.tabBarItem.title= @"健康";//来设置tab的title

    // Do any additional setup after loading the view, typically from a nib.
    

}


-(void)go{
    TestViewController *vc=[TestViewController new];
    vc.view.backgroundColor=[UIColor whiteColor];
    [self.tabBarController.navigationController pushViewController:vc animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
