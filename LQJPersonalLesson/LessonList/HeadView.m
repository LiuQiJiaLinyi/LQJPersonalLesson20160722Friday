//
//  HeadView.m
//  LQJPersonalLesson
//
//  Created by LiuQiJia on 16/7/21.
//  Copyright © 2016年 LiuQiJia. All rights reserved.
//

#import "HeadView.h"
#define kFloatSize [UIScreen mainScreen].bounds.size.width /320.f

@interface HeadView()
{
    UILabel * nameLabel;
    UIView * topView;
    UIImageView * headImage;
    UILabel * jobLabel;
    UILabel * consultNum;
    UITextView * detail_Des;
    UIButton * payNow;
    
    
}
@end

@implementation HeadView

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self buildUI];
    }
    return self;
}
-(void)buildUI
{
     topView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 103 *kFloatSize)];
     headImage = [[UIImageView alloc] initWithFrame:CGRectMake(10 *kFloatSize, 10 * kFloatSize, 83 * kFloatSize, 83 * kFloatSize)];
    [headImage.layer setMasksToBounds:YES];
    headImage.layer.cornerRadius = headImage.bounds.size.width/2;
    headImage.layer.borderWidth =0.3;
    headImage.layer.borderColor = [UIColor whiteColor].CGColor;
    
     nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(103 * kFloatSize, 16 * kFloatSize, 36 * kFloatSize, 18 * kFloatSize)];

    [nameLabel setText:@"LAJI"];
    [nameLabel setFont:[UIFont boldSystemFontOfSize:20]];
    
    jobLabel =[[UILabel alloc] initWithFrame:CGRectMake(10 *kFloatSize, 45 *kFloatSize, 200 * kFloatSize, 18 * kFloatSize)];
    
    consultNum =[[UILabel alloc] initWithFrame:CGRectMake(10 *kFloatSize, 72 * kFloatSize, 83 * kFloatSize, 15 * kFloatSize)];
    
    [topView addSubview:headImage];
    [topView addSubview:nameLabel];
    [topView addSubview:jobLabel];
    [topView addSubview:consultNum];
    [self addSubview:topView];
    [self buildDetail];
}

-(void)buildDetail
{
    detail_Des = [[UITextView alloc] initWithFrame:CGRectMake(0, 102  *kFloatSize, [UIScreen mainScreen].bounds.size.width, 40 *kFloatSize)];
    UIButton * but_ShowMore = [[UIButton alloc] initWithFrame:CGRectMake(13 * kFloatSize, detail_Des.bounds.origin.y + detail_Des.bounds.size.height, 298 * kFloatSize, 20 * kFloatSize)];
    
    [but_ShowMore addTarget:self action:@selector(moreOfIt:) forControlEvents:UIControlEventTouchUpInside];
    
    [but_ShowMore.layer setMasksToBounds:YES];
    [but_ShowMore.layer setCornerRadius:5];
    but_ShowMore.backgroundColor = [UIColor lightGrayColor];
    
    UILabel * moneyLabel = [[UILabel alloc] initWithFrame:CGRectMake(15 * kFloatSize, but_ShowMore.frame.size.height + but_ShowMore.frame.origin.y + 19 * kFloatSize,55 * kFloatSize , 15 *kFloatSize)];
    moneyLabel.font =[UIFont boldSystemFontOfSize:16];
    moneyLabel.text =@"咨询费用:";
    
    
    UILabel * showMoney = [[UILabel alloc] initWithFrame:CGRectMake(moneyLabel.frame.size.width + moneyLabel.frame.origin.x + 15 * kFloatSize, moneyLabel.frame.origin.y , 110 *kFloatSize, 25 *kFloatSize)];
    showMoney.text = @"¥360(50分钟)";
#warning 颜色记得改
    [showMoney setTextColor:[UIColor redColor]];
    
    
    UIButton * pay = [[UIButton alloc] initWithFrame:CGRectMake(showMoney.frame.origin.x + showMoney.frame.size.width, showMoney.frame.origin.y, 76  *kFloatSize, 26 *kFloatSize)];
    [pay setTitle:@"立即预约" forState:UIControlStateNormal];
    [pay setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [pay addTarget:self action:@selector(payItNow:) forControlEvents:UIControlEventTouchUpInside];
    pay.backgroundColor = [UIColor colorWithRed:0.600 green:0.149 blue:0.090 alpha:1.00];
    [pay.layer setMasksToBounds:YES];
    [pay.layer setCornerRadius:5];
    
    
    
    UILabel * timelabel = [[UILabel alloc] initWithFrame:CGRectMake(15* kFloatSize, showMoney.frame.size.height + showMoney.frame.origin.y, 55 * kFloatSize, 15*kFloatSize)];
    timelabel.font = [UIFont systemFontOfSize:14];
    timelabel.text = @"开课时间:";
    
    UILabel * timeShowlabel = [[UILabel alloc] initWithFrame:CGRectMake(timelabel.frame.size.width + timelabel.frame.origin.x + 15 * kFloatSize, timelabel.frame.origin.y, 135 * kFloatSize, 15 * kFloatSize)];
    
#pragma mark -更改日期处，格式户时间显示
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
   
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
   
    NSString *currentDateStr = [dateFormatter stringFromDate:[NSDate date]];
    NSLog(@"%@",currentDateStr);

    
    timeShowlabel.text =@"2016-07-22 14:00:00";
    
    
    UILabel * jiangshikecheng = [[UILabel alloc] initWithFrame:CGRectMake(14 * kFloatSize, timelabel.frame.origin.y + timelabel.frame.size.height +33 *kFloatSize, 64 * kFloatSize, 17 *kFloatSize)];
    
    jiangshikecheng.font = [UIFont boldSystemFontOfSize:17];
    [jiangshikecheng setTextColor:[UIColor blackColor]];
    jiangshikecheng.text = @"讲师课程";
    
    
    [self addSubview:pay];
    [self addSubview:timelabel];
    [self addSubview:timeShowlabel];
    [self addSubview:jiangshikecheng];
    
    [self addSubview:showMoney];
    [self addSubview:moneyLabel];
    [self addSubview:detail_Des];
    [self addSubview:but_ShowMore];
    
}


-(void)moreOfIt:(UIButton *)button
{
    NSLog( @"展示时更多的信息！");
}

-(void)payItNow:(UIButton * )butt
{
    NSLog(@"点击支付事件øøø%s",__FUNCTION__);
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
