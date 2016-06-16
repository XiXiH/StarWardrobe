//
//  TabBarController.m
//  StarWardrobe
//
//  Created by Mac on 16/6/7.
//  Copyright © 2016年 CYY. All rights reserved.
//

#import "TabBarController.h"

@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addChildViewController:[HomeVC new] withTitle:@"首页" withNormalImage:@"bottom_home_icon" withSelectedImage:@"bottom_home_icon_on"];
    [self addChildViewController:[MatchVC new] withTitle:@"搭配" withNormalImage:@"bottom_dapei_icon" withSelectedImage:@"bottom_dapei_icon_on"];
    [self addChildViewController:[CommunityVC new] withTitle:@"社区" withNormalImage:@"bottom_bbs_icon" withSelectedImage:@"bottom_bbs_icon_on"];
    [self addChildViewController:[ShoppingCarVC new] withTitle:@"购物车" withNormalImage:@"bottom_shopping_icon" withSelectedImage:@"bottom_shopping_icon_on"];
    [self addChildViewController:[MyVC new] withTitle:@"我的" withNormalImage:@"bottom_like_icon" withSelectedImage:@"bottom_like_icon_on"];
}

-(void)addChildViewController:(UIViewController *)childVC withTitle:(NSString *)title withNormalImage:(NSString *)image withSelectedImage:(NSString *)selectImage
{
    childVC.tabBarItem.title = title;
    childVC.tabBarItem.image = [UIImage imageNamed:image];
    childVC.tabBarItem.selectedImage = [[UIImage imageNamed: selectImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [childVC.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:RGBColor(255, 49, 122)}forState:UIControlStateSelected];
    NavigationController *nav = [[NavigationController alloc]initWithRootViewController:childVC];
    [self addChildViewController:nav];

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
