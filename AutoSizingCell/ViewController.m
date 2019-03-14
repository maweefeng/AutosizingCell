//
//  ViewController.m
//  AutoSizingCell
//
//  Created by Alex wee on 2019/3/13.
//  Copyright © 2019年 Alex wee. All rights reserved.
//

#import "ViewController.h"
#import "AutoSizingCell.h"
#import "SectionLabel.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,copy)NSArray *textArr;
@end
static NSString * identifier = @"id";
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textArr = @[@"Hey man,i see you at KFC in the morning and i told to you find that is not you ,actually it is davin and lucy",@"oh in the morning i was in my house watching tv with my girl friend",@"oh i was wrong",@"oh that is all right",@"how are you this time,we have not been seen about 20 days",@"yeah how about planing a meeting this friday,drink some wine",@"Hey man,i see you at KFC in the morning and i told to you find that is not you ,actually it is davin and lucy",@"oh in the morning i was in my house watching tv with my girl friend",@"oh i was wrong",@"oh that is all right",@"how are you this time,we have not been seen about 20 days",@"yeah how about planing a meeting this friday,drink some wine",@"Hey man,i see you at KFC in the morning and i told to you find that is not you ,actually it is davin and lucy",@"oh in the morning i was in my house watching tv with my girl friend",@"oh i was wrong",@"oh that is all right",@"how are you this time,we have not been seen about 20 days",@"yeah how about planing a meeting this friday,drink some wine"];
    self.title = @"消息";
    self.navigationController.navigationBar.prefersLargeTitles = YES;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.backgroundColor = [UIColor colorWithWhite:0.95 alpha:1];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.tableView registerClass:[AutoSizingCell class] forCellReuseIdentifier:identifier];


}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    return self.textArr.count;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    SectionLabel * dataLabel = [[SectionLabel alloc]init];
    dataLabel.text = @"2019-02-19";
    UIView * contentView = [[UIView alloc]init];
    [contentView addSubview:dataLabel];
    [dataLabel.centerXAnchor constraintEqualToAnchor:contentView.centerXAnchor].active = YES;
    [dataLabel.centerYAnchor constraintEqualToAnchor:contentView.centerYAnchor].active = YES;
    return contentView;
    
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{

    return 50;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AutoSizingCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.messageLabel.text = self.textArr[indexPath.row];
    cell.isIncoming = indexPath.row % 2?YES:NO;
    return cell;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
