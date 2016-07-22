//
//  DetailCourseTableCell.m
//  LQJPersonalLesson
//
//  Created by Jiker on 2016/7/22.
//  Copyright © 2016年 LiuQiJia. All rights reserved.
//

#import "DetailCourseTableCell.h"

#define kFloatSize [UIScreen mainScreen].bounds.size.width /320.f

@interface DetailCourseTableCell()
{
    UIImageView * iamgeView;
    UILabel * title_label;
    UILabel * des_label;
    UILabel * time_label;
}
@end

@implementation DetailCourseTableCell

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self buildUI];
    }
    return self;
}
-(void)buildUI
{
    iamgeView = [[UIImageView alloc] init];
    title_label = [[UILabel alloc] init];
    des_label = [[UILabel alloc] init];
    time_label = [[UILabel alloc] init];
    
    [self.contentView addSubview:iamgeView];
    [self.contentView addSubview:title_label];
    [self.contentView addSubview:des_label];
    [self.contentView addSubview:time_label];

}

-(void)setIamge_str:(NSString *)iamge_str
{
    iamgeView.frame = CGRectMake(15 * kFloatSize, 5* kFloatSize, 90* kFloatSize, 66 * kFloatSize);
    _iamge_str = iamge_str;
}

-(void)setTitle_str:(NSString *)title_str
{
    title_label.frame = CGRectMake(117* kFloatSize, 5 * kFloatSize, 183* kFloatSize, 20*kFloatSize);
    title_label.font = [UIFont boldSystemFontOfSize:15];
    title_label.text = @"title_str";
//    title_label.text = title_str;
    
    _title_str = title_str;
}

-(void)setDes_str:(NSString *)des_str
{
    des_label.frame = CGRectMake(117  *kFloatSize, 30 * kFloatSize, 190* kFloatSize, 31 * kFloatSize);
    [des_label setTextColor:[UIColor lightGrayColor]];
    des_label.text = @"详情";
    
    _des_str = des_str;
}

-(void)setPlayTime_str:(NSString *)playTime_str
{
    time_label.frame = CGRectMake(117 * kFloatSize, 66 * kFloatSize, 56 * kFloatSize, 15 *kFloatSize);
    NSString * tempStr = [NSString stringWithFormat:@"播放:%@",playTime_str];
    time_label.text = tempStr;
    
    _playTime_str = playTime_str;
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
