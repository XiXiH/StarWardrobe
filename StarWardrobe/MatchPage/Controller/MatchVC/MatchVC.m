//
//  MatchVC.m
//  StarWardrobe
//
//  Created by Mac on 16/6/7.
//  Copyright © 2016年 CYY. All rights reserved.
//

#import "MatchVC.h"
#import "MCNavigationBar.h"
#import "BaseViewController.h"
@interface MatchVC ()

@end

@implementation MatchVC

- (void)viewDidLoad {
    [super viewDidLoad];
   
  
    self.navigationController.navigationBar.hidden = YES;

    BaseViewController *baseVC = [BaseViewController new];
    [self addChildViewController:baseVC];
    
    [self.view addSubview:baseVC.view];
    
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
