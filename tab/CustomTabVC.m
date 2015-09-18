//
//  CustomTabVC.m
//  tab
//
//  Created by 陈思宇 on 15/9/18.
//  Copyright (c) 2015年 陈思宇. All rights reserved.
//
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "CustomTabVC.h"
#import "TestViewController.h"
@interface CustomTabVC ()<UITabBarControllerDelegate>

@end

@implementation CustomTabVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initView];
    // Do any additional setup after loading the view.
}


-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:YES];
//    [self.tabBar setShadowImage:[UIImage imageNamed:@"tm"]];
 //   [self.tabBar setBackgroundImage:[UIImage imageNamed:@"tm"]];
    
//    NSArray  *tabArray=self.tabBar.subviews;
//    
//    for ( id obj  in tabArray) {
//        
//        if ([obj isKindOfClass:[UIImageView class]]) {
//            
//            UIImageView *imageView=(UIImageView *) obj;
//            
//            imageView.backgroundColor=[UIColor clearColor];
//            
//        }
//        
//        
//}
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 6)
        
    {
        
        [[UITabBar appearance] setShadowImage:[[UIImage alloc] init]];
        
    }
}






-(void)initView{

   
//     [[UITabBar appearance] setShadowImage:[UIImage imageNamed:@"tm"]];//隐藏那条黑线
    
    
    
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor], NSForegroundColorAttributeName,[UIFont fontWithName:@"Helvetica" size:13.0], NSFontAttributeName,nil] forState:UIControlStateNormal];
    
    UIColor *titleHighlightedColor = [UIColor colorWithRed:137/255.0 green:207/255.0 blue:199/255.0 alpha:1.0];
    
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:titleHighlightedColor, NSForegroundColorAttributeName,[UIFont fontWithName:@"Helvetica" size:13.0], NSFontAttributeName,nil] forState:UIControlStateSelected];
    
    
    
    
    
    
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] ;
    // Override point for customization after application launch.
    
    //第一个tab的viewController
    FirstViewController *firstViewController = [[FirstViewController alloc]init];
    UINavigationController *nav=[[UINavigationController alloc]initWithRootViewController:firstViewController];
    //如果在这里指定tabitem标题，则在FirstViewController中指定self.tabBarItem.title则不生效
    firstViewController.title = @"First view";
    
    UIImage *musicImage = [UIImage imageNamed:@"p1"];
    UIImage *musicImageSel = [UIImage imageNamed:@"p1_f"];
    
    musicImage = [musicImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    musicImageSel = [musicImageSel imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"健康" image:musicImage selectedImage:musicImageSel];
    
    
    
    
    SecondViewController *secondViewController = [[SecondViewController alloc]init];
    
    //构建TabBarItem
    
    
    //设置选中和非选中状态下的图片
    musicImage = [UIImage imageNamed:@"p2"];
    musicImageSel = [UIImage imageNamed:@"p2_f"];
    
    musicImage = [musicImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    musicImageSel = [musicImageSel imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //指定tabBarItem
    secondViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"动态" image:musicImage selectedImage:musicImageSel];
    //右上角小图标
    [secondViewController.tabBarItem setBadgeValue:@"9"];
    //    [secondItem setEnabled:NO];
    
    
    SecondViewController *secondViewController3 = [[SecondViewController alloc]init];
    //设置选中和非选中状态下的图片
    musicImage = [UIImage imageNamed:@"p3"];
    musicImageSel = [UIImage imageNamed:@"p3_f"];
    
    musicImage = [musicImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    musicImageSel = [musicImageSel imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //指定tabBarItem
    secondViewController3.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"幼儿园" image:musicImage selectedImage:musicImageSel];
    //右上角小图标
    //  [secondViewController3.tabBarItem setBadgeValue:@"2"];
    
    
    SecondViewController *secondViewController4 = [[SecondViewController alloc]init];
    //设置选中和非选中状态下的图片
    musicImage = [UIImage imageNamed:@"p4"];
    musicImageSel = [UIImage imageNamed:@"p4_f"];
    musicImage = [musicImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    musicImageSel = [musicImageSel imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //指定tabBarItem
    secondViewController4.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"更多" image:musicImage selectedImage:musicImageSel];
    //右上角小图标
    //  [secondViewController4.tabBarItem setBadgeValue:@"2"];
    
    
    
    UIViewController *nilvc=[UIViewController new];
    // nilvc.tabBarItem=nil;
    [nilvc.tabBarItem setEnabled:NO];
    
    
    
    
        self.tabBar.clipsToBounds=NO;
        UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
        button.frame=CGRectMake(SCREENW/2-20.25, -8, 40.5, 44.5);
      //  button.backgroundColor=[UIColor yellowColor];
    [button setImage:[UIImage imageNamed:@"2"] forState:UIControlStateNormal];
    button.alpha=1;
        [self.tabBar addSubview:button];
    [button addTarget:self action:@selector(go) forControlEvents:UIControlEventTouchUpInside];
//    self.tabBar.translucent=NO;
    
    
    
    
    
    
    
    
    //构建UITabBarController并指定代理为本身
//    self.tabBarController = [[UITabBarController alloc]init];
    self.delegate = self;
    //为UITabBarController添加TabBarItem
    self.viewControllers = [NSArray arrayWithObjects:secondViewController,nav,nilvc,secondViewController3,secondViewController4, nil];

    
    
    
    
    
}



-(void)go{
    TestViewController *vc=[TestViewController new];
    vc.view.backgroundColor=[UIColor whiteColor];
    [self.navigationController pushViewController:vc animated:YES];
}









- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
