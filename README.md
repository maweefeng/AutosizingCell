# AutosizingCell

![](https://ws1.sinaimg.cn/large/006tKfTcgy1g125to6scgj30ea0osabt.jpg)

轻松实现聊天界面的简单搭建 


## 注意点

设置完约束之后一定要激活约束才生效


```  
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        UILabel * messageLabel = [[UILabel alloc]init];
        messageLabel.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:messageLabel];
        NSArray * constrains = @[
        [messageLabel.topAnchor constraintEqualToAnchor:self.topAnchor],
        [messageLabel.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
        [messageLabel.trailingAnchor constraintEqualToAnchor:self.trailingAnchor],
        [messageLabel.bottomAnchor constraintEqualToAnchor:self.bottomAnchor]];
        
        [NSLayoutConstraint activateConstraints:constrains];
        
        
    }
    
    return self;
    
}
```

另外translatesAutoresizingMaskIntoConstraints属性要注意。

官方注释

/* By default, the autoresizing mask on a view gives rise to constraints that fully determine 
 the view's position. This allows the auto layout system to track the frames of views whose 
 layout is controlled manually (through -setFrame:, for example).
 When you elect to position the view using auto layout by adding your own constraints, 
 you must set this property to NO. IB will do this for you.
 */

默认情况下，视图上的自动调整蒙版会产生完全确定的约束
视图的位置。这允许自动布局系统跟踪视图的框架
布局是手动控制的(例如，通过-setFrame:)。
当您选择通过添加自己的约束来使用自动布局来定位视图时，
必须将此属性设置为NO。IB会为你做这件事的。




