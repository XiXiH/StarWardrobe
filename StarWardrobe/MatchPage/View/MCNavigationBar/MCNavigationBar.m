//
//  MCNavigationBar.m
//  StarWardrobe
//
//  Created by lhb on 16/6/7.
//  Copyright © 2016年 CYY. All rights reserved.
//

#import "MCNavigationBar.h"

@implementation MCNavigationBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self createView];
    }
    return self;
}
/**
 *  自定义matchVC的导航栏
 */
- (void)createView{
    
    UIButton *matchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    matchBtn.frame = CGRectMake(Width/2-70, 30, 50, 24);
    [matchBtn setTitle:@"搭配" forState:UIControlStateNormal];
    [matchBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [matchBtn setTitleColor:RGBColor(255, 49, 122) forState:UIControlStateSelected];
    [matchBtn addTarget:self action:@selector(showMatchVC:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:matchBtn];
    _matchBtn = matchBtn;
    _matchBtn.selected = YES;
    
    
    UIButton *specialBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    specialBtn.frame = CGRectMake(Width/2+20, 30, 50, 25);
    [specialBtn setTitle:@"专题" forState:UIControlStateNormal];
    [specialBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [specialBtn setTitleColor:RGBColor(255, 49, 122) forState:UIControlStateSelected];
    [specialBtn addTarget:self action:@selector(showSpecialVC:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:specialBtn];
    _specialBtn = specialBtn;
    
    
    UIButton *messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    messageBtn.frame = CGRectMake(Width-50, 30, 30, 24);
    [messageBtn setBackgroundImage:[UIImage imageNamed:@"button_head_massage"] forState:UIControlStateNormal];
    [messageBtn addTarget:self action:@selector(presentMesVC:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:messageBtn];
    
    UIView *slider = [[UIView alloc]initWithFrame:CGRectMake(matchBtn.frame.origin.x-10, 60, 70, 4)];
    slider.backgroundColor = MColor;
    [self addSubview:slider];
    _slider = slider;
    
}

// 搭配按钮的点击事件

- (void)showMatchVC:(UIButton *)sender {
    _specialBtn.selected = NO;
    
    [UIView animateWithDuration:0.05 animations:^{
       
        _slider.frame = CGRectMake(_matchBtn.frame.origin.x-10, 60, 70, 4);
        
    } completion:^(BOOL finished) {
        
         sender.selected =! sender.selected;
    }];
    
    
    
    
}

//专题按钮的点击事件

- (void)showSpecialVC:(UIButton *)sender {
    _matchBtn.selected = NO;
    
    [UIView animateWithDuration:0.05 animations:^{
        
        _slider.frame = CGRectMake(_specialBtn.frame.origin.x-10, 60, 70, 4);
        
    } completion:^(BOOL finished) {
        
        sender.selected =! sender.selected;
    }];

   
    
}
//message的按钮点击事件
- (void)presentMesVC:(UIButton *)sender {
    
}


@end
