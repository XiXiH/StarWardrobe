//
//  BaseViewController.h
//  StarWardrobe
//
//  Created by lhb on 16/6/8.
//  Copyright © 2016年 CYY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

@property (strong, nonatomic) UITableView *tableView;

@property (strong, nonatomic) NSMutableArray *dataArr;

@end
