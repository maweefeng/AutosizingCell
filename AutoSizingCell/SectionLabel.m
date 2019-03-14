//
//  SectionLabel.m
//  AutoSizingCell
//
//  Created by Alex wee on 2019/3/14.
//  Copyright © 2019年 Alex wee. All rights reserved.
//

#import "SectionLabel.h"

@implementation SectionLabel
-(instancetype)init{
    
    if (self = [super init]) {
        self.textColor = [UIColor whiteColor];
        self.font = [UIFont boldSystemFontOfSize:14];
        self.backgroundColor = [UIColor brownColor];
        self.textAlignment = NSTextAlignmentCenter;
        self.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return self;
}

-(CGSize)intrinsicContentSize{
    CGSize Origin = [super intrinsicContentSize];
    self.layer.cornerRadius = (Origin.height+12)/2;
    self.layer.masksToBounds = YES;
    return CGSizeMake(Origin.width+16, Origin.height+12);

}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
