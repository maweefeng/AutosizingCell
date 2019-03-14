//
//  AutoSizingCell.m
//  AutoSizingCell
//
//  Created by Alex wee on 2019/3/13.
//  Copyright © 2019年 Alex wee. All rights reserved.
//

#import "AutoSizingCell.h"
@interface AutoSizingCell()
@property(nonatomic,strong)NSLayoutConstraint * leadingConstraint;
@property(nonatomic,strong)NSLayoutConstraint * trailingConstraint;
@end


@implementation AutoSizingCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.bubuleView = [[UIView alloc]init];
        self.bubuleView.layer.cornerRadius = 5;
        self.bubuleView.translatesAutoresizingMaskIntoConstraints = NO;
        self.bubuleView.backgroundColor = [UIColor yellowColor];
        [self addSubview:self.bubuleView];
        self.messageLabel = [[UILabel alloc]init];
        [self addSubview:self.messageLabel];
        self.messageLabel.numberOfLines = 0;
        self.messageLabel.translatesAutoresizingMaskIntoConstraints = NO;
        NSArray * constrains = @[
        [self.messageLabel.topAnchor constraintEqualToAnchor:self.topAnchor constant:32.f],
        [self.messageLabel.widthAnchor constraintLessThanOrEqualToConstant:250],
        [self.messageLabel.bottomAnchor constraintEqualToAnchor:self.bottomAnchor constant:-32.f],
        [self.bubuleView.topAnchor constraintEqualToAnchor:self.messageLabel.topAnchor constant:-16],
         [self.bubuleView.bottomAnchor constraintEqualToAnchor:self.messageLabel.bottomAnchor constant:16],
        [self.bubuleView.leadingAnchor constraintEqualToAnchor:self.messageLabel.leadingAnchor constant:-16],
        [self.bubuleView.trailingAnchor constraintEqualToAnchor:self.messageLabel.trailingAnchor constant:16],
        
        ];
        
        [NSLayoutConstraint activateConstraints:constrains];
        
    self.leadingConstraint =    [self.messageLabel.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:32.f];
       
    self.trailingConstraint = [self.messageLabel.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-32.f];

    }
    
    return self;
    
}
-(void)setIsIncoming:(BOOL)isIncoming{
    
    _isIncoming = isIncoming;
    self.bubuleView.backgroundColor = isIncoming ? [UIColor whiteColor] : [UIColor greenColor];
    if (isIncoming) {
        self.leadingConstraint.active = YES;
        self.trailingConstraint.active = NO;
    }else{
        self.leadingConstraint.active = NO;
        self.trailingConstraint.active = YES;
    }
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
