//
//  ZQViewController.m
//  ZQUIKitChainTool
//
//  Created by caozhiqiang on 2019/9/17.
//  Copyright © 2019 caozhiqiang. All rights reserved.
//

#import "ZQViewController.h"
#import "ZQTableViewCell.h"

#import <ZQUIKitChainTool/ZQUIKitChainTool.h>

@interface ZQViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation ZQViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    [self createTableView];
}

- (void)createTableView {
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.tableViewTool
                .backgroundColor([UIColor colorWithWhite:0.9 alpha:1.0])
                .delegate(self)
                .dataSource(self)
                .showsVerticalScrollIndicator(NO)
                .addToSuperView(self.view);
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *cellID = nil;
    switch (indexPath.section) {
        case 0:
            cellID = @"viewID";
            break;
        case 1:
            cellID = @"labelID";
            break;
        case 2:
            cellID = @"tapID";
            break;
        case 3:
            cellID = @"buttonID";
            break;
        default:
            break;
    }
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        switch (indexPath.row) {
            case 0:
                cell = [[ZQUIViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
                break;
            case 1:
                cell = [[ZQUILabelCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
                break;
            case 2:
                cell = [[ZQTapGestureCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
                break;
            case 3:
                cell = [[ZQUIButtonCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
                break;
            default:
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
                break;
        }
        cell.tableCellTool.selectionStyle(UITableViewCellSelectionStyleNone);
    }
    
    return cell;
}

#pragma mark - UITableViewDelegate {

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

@end
