//
//  AutoSizingCell.h
//  AutoSizingCell
//
//  Created by Alex wee on 2019/3/13.
//  Copyright © 2019年 Alex wee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AutoSizingCell : UITableViewCell
@property(nonatomic,strong)UILabel * messageLabel;
@property(nonatomic,strong)UIView * bubuleView;
@property(nonatomic,assign)BOOL isIncoming;
@end
