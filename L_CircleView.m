//
//  L_CircleView.m
//  suguo
//
//  Created by luhongyu on 17/7/7.
//  Copyright © 2017年 luhongyu. All rights reserved.
//

#import "L_CircleView.h"

@implementation L_CircleView

- (void)drawRect:(CGRect)rect {
    
    // 计算中心点
    CGFloat centerX = (self.bounds.size.width - self.bounds.origin.x) / 2;
    CGFloat centerY = (self.bounds.size.height - self.bounds.origin.y) / 2;
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    // 添加一个圆形
    [path addArcWithCenter:CGPointMake(centerX, centerY) radius:_radius startAngle:0 endAngle:_aaa clockwise:YES];
    
    // 设置线条宽度
    path.lineWidth = _lineWidth;
    
    // 设置线条颜色
    [_color setStroke];
    
    // 绘制线条
    [path stroke];
    
    UIBezierPath *path1 = [[UIBezierPath alloc] init];
    // 添加一个圆形
    [path1 addArcWithCenter:CGPointMake(centerX, centerY) radius:_radius1 startAngle:0 endAngle:_aaa1 clockwise:YES];
    
    // 设置线条宽度
    path1.lineWidth = _lineWidth1;
    
    // 绘制线条
    [path1 stroke];
}

/**
 *  设置边框宽度
 *
 *  @param borderWidth 可视化视图传入的值
 */
- (void)setBorderWidth:(CGFloat)borderWidth {
    
    if (borderWidth < 0) return;
    
    self.layer.borderWidth = borderWidth;
}

/**
 *  设置边框颜色
 *
 *  @param borderColor 可视化视图传入的值
 */
- (void)setBorderColor:(UIColor *)borderColor {
    
    self.layer.borderColor = borderColor.CGColor;
}

/**
 *  设置圆角
 *
 *  @param cornerRadius 可视化视图传入的值
 */
- (void)setCornerRadius:(CGFloat)cornerRadius {
    
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = cornerRadius > 0;
}

@end
