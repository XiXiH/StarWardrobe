//
//  BaseViewController.m
//  StarWardrobe
//
//  Created by lhb on 16/6/8.
//  Copyright © 2016年 CYY. All rights reserved.
//

#import "BaseViewController.h"
#import "BaseTableViewCell.h"
#import "MCNavigationBar.h"
@interface BaseViewController ()<UITableViewDataSource,UITableViewDelegate>



@end

#define cellID @"cell"

@implementation BaseViewController

- (NSMutableArray *)dataArr {
    
    if (!_dataArr) {
        
        _dataArr = [NSMutableArray array];
    }
    return _dataArr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.navigationController.navigationBar.hidden = YES;
    [self createTableView];
    [self customNavigationBar];
   
}

- (void)customNavigationBar {
    
    self.navigationController.navigationBar.hidden = YES;
    MCNavigationBar *navigationBar = [[MCNavigationBar alloc]initWithFrame:CGRectMake(0, 0, Width, 64)];
    [self.view addSubview:navigationBar];
    
    
}


- (void)createTableView {
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
    tableView.dataSource = self;
    tableView.delegate = self;
    tableView.transform = CGAffineTransformMakeRotation(- M_PI_2);
    tableView.frame = CGRectMake(0, 66, Width-50, 44);
    tableView.rowHeight = 60;
    tableView.showsVerticalScrollIndicator = NO;
    [tableView registerClass:[BaseTableViewCell class] forCellReuseIdentifier:cellID];
     [self.view addSubview:tableView];
    
    _tableView = tableView;

}
#pragma  mark--tableView 的协议方法---------------

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (_dataArr.count>0) {
        
       return _dataArr.count;
    }
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    BaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.contentView.transform = CGAffineTransformMakeRotation(M_PI_2);

   cell.titleLabel.text = @"精品";
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
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
